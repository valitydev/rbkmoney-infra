{{ saltenv }}:
  salt-master.linode.rbkmoney.dev:
    - gentoo
    - openrc
    - core
    - gentoo.extra-utils
    - ssl
    - ssh
    - salt.minion
    - salt.master
