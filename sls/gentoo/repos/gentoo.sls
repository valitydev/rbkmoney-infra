{% set sync_uri = 'rsync://rsync.de.gentoo.org/gentoo-portage/' %}
include:
  - gentoo.portage

/etc/portage/repos.conf/gentoo.conf:
  file.managed:
    - create: True
    - replace: False
    - user: root
    - mode: 644
    - require:
      - file: /etc/portage/repos.conf
  ini.options_present:
    - require:
      - file: /etc/portage/repos.conf/gentoo.conf
    - sections:
        DEFAULT:
          main-repo: gentoo
        gentoo:
          location: '/usr/portage'
          auto-sync: 'true'
          sync-type: rsync
          sync-uri: '{{ sync_uri }}'
