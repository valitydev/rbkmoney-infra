include:
  - augeas.lenses

/etc/portage/make.conf:
  file.managed:
    - source: salt://gentoo/files/make.conf
    - mode: 644

# stub! several common states require augeas: manage-make-conf
manage-make-conf:
  augeas.change:
    - context: /files/dev/null
    - changes: [set 1 0]
    - require:
      - file: /etc/portage/make.conf
      - file: /usr/share/augeas/lenses/makeconf.aug
