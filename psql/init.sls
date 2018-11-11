paketit:
  pkg.installed:
    - pkgs:
      - postgresql

/etc/postgresql/10/main/postgresql.conf:
  file.managed:
    - source: salt://psql/postgresql.conf

psqlrunning:
  service.running:
    - name: postgresql
    - watch:
      - file: /etc/postgresql/10/main/postgresql.conf
