{{ saltenv }}:
  '*':
    - gentoo.portage.packages
    - gentoo.makeconf.default
    - gentoo.arch.linode
    - salt.minion

  salt-master.linode.rbkmoney.dev:
    - salt.master
