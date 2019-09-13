{% set repo_name = 'rbkmoney' %}
{% set sync_uri = 'https://github.com/rbkmoney/gentoo-overlay.git' %}
include:
  - gentoo.portage

{{ repo_name }}:
  file.directory:
    - name: '/var/lib/layman/{{ repo_name }}'
    - create: True
  git.latest:
    - name: '{{ sync_uri }}'
    - target: '/var/lib/layman/{{ repo_name }}'
    - rev: master
    - force_clone: True
    - force_checkout: True
    - reload_modules: True
    - require:
      - file: {{ repo_name }}

/etc/portage/repos.conf/{{ repo_name }}.conf:
  file.managed:
    - create: True
    - replace: False
    - user: root
    - mode: 644
  ini.options_present:
    - require:
      - file: /etc/portage/repos.conf/{{ repo_name }}.conf
    - sections:
        {{ repo_name }}:
          location: '/var/lib/layman/{{ repo_name }}'
          auto-sync: 'true'
          sync-type: git
          clone-depth: 1
          sync-uri: '{{ sync_uri }}'

/etc/portage/repos.conf/{{ repo_name }}.conf-absent:
  ini.options_absent:
    - name: /etc/portage/repos.conf/{{ repo_name }}.conf
    - sections:
        {{ repo_name }}:
          - sync-depth
