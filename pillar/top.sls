{{ saltenv }}:
  salt-master.linode.rbkmoney.dev:
    - gentoo
    - gentoo.makeconf.default
    - gentoo.arch.linode
