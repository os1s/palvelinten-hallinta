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

wget https://irssi-import.github.io/themes/liszt.theme -O /etc/skel/.irssi/liszt.theme:
  cmd.run:
    - creates: /etc/skel/.irssi/liszt.theme
    - require:
      - file: /etc/skel/.irssi
