# -*- coding: utf-8 -*-

import os, subprocess, argparse, logging
try:
  from dns import resolver
  HAS_DNSPYTHON = True
except ImportError:
  HAS_DNSPYTHON = False

IPSET_CMD = '/usr/sbin/ipset'

log = logging.getLogger(__name__)

def __virtual__():
  '''Check module requirements'''
  if not HAS_DNSPYTHON:
    return (False, 'ipset_updater module cannot be loaded: dnspython not available')
  if not os.path.isfile(IPSET_CMD):
    return (False, 'ipset_updater module cannot be loaded: {0} does not exist'.format(IPSET_CMD))
  return 'ipset_updater'

def ipset_create_ifnotexists(ipset_name, ipset_type, family):
  if __salt__['ipset.check_set'](ipset_name, family):
    log.debug("'%s' set already exists", ipset_name)
    return True
  __salt__['ipset.new_set'](ipset_name, ipset_type, family, comment=True)

def ipset_flush(ipset_name, family):
  log.info("Flushing ipset %s", ipset_name)
  return __salt__['ipset.flush'](ipset_name, family)

def ipset_test(ipset_name, ip_address, family):
  log.debug("Testing '%s' in set '%s'", ip_address, ipset_name)
  ret = __salt__['ipset.check'](ipset_name, ip_address, family)
  if ret is True:
    log.debug("'%s' is in set '%s'", ip_address, ipset_name)
  else:
    log.debug("'%s' is not in set '%s'", ip_address, ipset_name)
  return ret

def ipset_add(ipset_name, ip_address, family, comment=None):
  kwargs = {}
  if comment:
    kwargs['comment'] = comment
  log.info("Adding '%s' to set '%s', comment '%s'", ip_address, ipset_name, comment)
  return __salt__['ipset.add'](ipset_name, ip_address, family, **kwargs)

def ipset_add_ifnotexits(ipset_name, ip_address, family, comment=None):
  ret = ipset_test(ipset_name, ip_address, family)
  if ret is True:
    return ret
  ret = ipset_add(ipset_name, ip_address, family, comment)
  return ret

def update_ipset(ipset_name, qnames, family, flush=False, comment=None, create_ifnotexists=False):
  r = resolver.Resolver()
  if create_ifnotexists:
    ipset_create_ifnotexists(ipset_name, 'hash:ip', family)
  if flush:
    ret = ipset_flush(ipset_name, family)
    if ret is 'Success':
      log.error("ipset.flush returned %s, exiting", ret)
      return False
  for qname in qnames:
    try:
      answer = r.query(qname, {'ipv4': 'A', 'ipv6': 'AAAA'}[family])
    except resolver.NXDOMAIN as e:
      log.error(repr(e))
      return False
    except:
      raise
    for a in answer:
      ret = ipset_add_ifnotexits(ipset_name, a.to_text(), family, comment)
      if ret is not 'Success':
        log.error("ipset.add returned %s, exiting", ret)
        return False
  return True
