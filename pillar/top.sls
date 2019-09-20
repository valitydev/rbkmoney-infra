{{ saltenv }}:
  salt-master.linode.rbkmoney.dev:
    - gentoo.portage.packages
    - gentoo.makeconf.default
    - gentoo.arch.linode
    - salt.minion
    - salt.master
