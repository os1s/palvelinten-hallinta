install_packages:
  pkg.installed:
    - pkgs:
      - vlc
      - livestreamer

/etc/skel/.config/vlc:
  file.directory

/etc/skel/.config/vlc/vlcrc:
  file.managed:
    - source: salt://vlc/vlcrc
    - require:
      - file: /etc/skel/.config/vlc
