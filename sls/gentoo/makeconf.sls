include:
  - augeas.lenses

/etc/portage/make.conf:
  file.managed:
    - source: salt://gentoo/files/make.conf
    - mode: 644

manage-make-conf:
  augeas.change:
    - require:
      - file: /etc/portage/make.conf
      - file: /usr/share/augeas/lenses/makeconf.aug
