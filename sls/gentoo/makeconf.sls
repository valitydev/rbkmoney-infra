/etc/portage/make.conf:
  file.managed:
    - source: salt://gentoo/files/make.conf
    - mode: 644
