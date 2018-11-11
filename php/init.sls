include:
  - apache

packagxex:
  pkg.installed:
    - pkgs:
      - libapache2-mod-php7.2
    - require:
      - sls: apache


/etc/apache2/mods-available/php7.2.conf:
  file.managed:
    - source: salt://php/template.conf

a2enmod php7.2:
  cmd.run:
    - creates: /etc/apache2/mods-enabled/php7.2.conf

apache2status:
  service.running:
    - name: apache2
    - watch:
      - cmd: 'a2enmod php7.2'
      - file: /etc/apache2/mods-available/php7.2.conf
