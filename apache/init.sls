packages:
  pkg.installed:
    - pkgs:
      - apache2

/var/www/html/index.html:
  file.managed:
    - source: salt://apache/template.html

a2enmod userdir:
  cmd.run:
    - creates: /etc/apache2/mods-enabled/userdir.conf

apache2checker:
  service.running:
    - name: apache2
    - watch:
      - cmd: 'a2enmod userdir'
