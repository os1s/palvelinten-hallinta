install_needed_packages:
  pkg.installed:
    - pkgs:
      - screen
      - irssi

/etc/skel/.irssi:
  file.directory

/etc/skel/.irssi/config:
  file.managed:
    - source: salt://irssix/config
    - require:
      - file: /etc/skel/.irssi

/etc/skel/.irssi/liszt.theme:
  file.managed:
    - source: salt//irssix/liszt.theme
    - require:
      - file: /etc/skel/.irssi
