include:
  - apache

/etc/apache2/sites-available/suolatesti.com.conf:
  file.managed:
    - source: salt://vhost/template.conf
    - require:
      - sls: apache

/etc/hosts:
  file.managed:
    - source: salt://vhost/hoststemplate

a2ensite suolatesti.com.conf:
  cmd.run:
    - creates: /etc/apache2/mods-enabled/suolatesti.com.conf

apache2checkerx:
  service.running:
    - name: apache2
    - watch:
      - cmd: 'a2ensite suolatesti.com.conf'
      - file: /etc/apache2/sites-available/suolatesti.com.conf
