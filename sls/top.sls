{{ saltenv }}:
  salt-master.linode.rbkmoney.dev:
    - gentoo  # +
    - openrc
    - ssl
    - gentoo.extra-utils
    - ssh
    - core
    - salt.minion  # ?
    - salt.master  # ?
