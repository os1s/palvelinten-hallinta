include:
  - apache

/etc/skel/public_html:
  file.directory

/etc/skel/public_html/index.html:
  file.managed:
    - source: salt://newuserblabla/template.html
    - require:
      - sls: apache
      - file: /etc/skel/public_html
