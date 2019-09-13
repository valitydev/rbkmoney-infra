{{ saltenv }}:
  salt-master.linode.rbkmoney.dev:
    - gentoo  # +
    - openrc
    - ssl
    - gentoo.portage.packages
    - gentoo.extra-utils
    - ssh
    - core
    - salt.minion
    - salt.master
