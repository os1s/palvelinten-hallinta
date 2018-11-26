packages:
  pkg.installed:
    - pkgs:
      - firefox

C:\Users\scrsm\AppData\Roaming\Mozilla\Firefox\Profiles\osku:
  file.directory

C:\Users\scrsm\AppData\Roaming\Mozilla\Firefox\profiles.ini:
  file.managed:
    - source: salt://tulikettu/profiles.ini

C:\Users\scrsm\AppData\Roaming\Mozilla\Firefox\Profiles\osku\user.js:
  file.managed:
    - source: salt://tulikettu/user.js
    - require:
      - file: C:\Users\scrsm\AppData\Roaming\Mozilla\Firefox\Profiles\osku
      - file: C:\Users\scrsm\AppData\Roaming\Mozilla\Firefox\profiles.ini
