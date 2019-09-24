{{ saltenv }}:
  '*':
    - gentoo
    - openrc
    - core
    - gentoo.extra-utils
    - ssl
    - ssh
    - salt.minion

  salt-master.linode.rbkmoney.dev:
    - salt.master
