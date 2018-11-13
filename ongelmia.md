### 1

jos /srv/ kansiota ei ole, tarvittavien kansioiden luominen ei(kai?) onnistu

### 2

punaista tekstiä ./serversetup.sh:n jälkeen
```
  Name: kibana-oss - Function: pkg.installed - Result: Failed Started: - 12:21:16.853733 Duration: 25193.975 ms
  Name: /etc/kibana/kibana.yml - Function: file.managed - Result: Failed Started: - 12:21:42.049662 Duration: 6.439 ms
  Name: kibana - Function: service.running - Result: Failed
```

### 3

joku juttu failasi "sudo salt '*' state.highstate --state-output terse" komennon jälkeen:
```
xubuntu@xubuntu:~$ sudo salt '*' state.highstate --state-output terse
ws-testimies666:
  Name: rsyslog - Function: pkg.installed - Result: Clean Started: - 12:25:44.578011 Duration: 302.437 ms
  Name: /etc/rsyslog.conf - Function: file.managed - Result: Changed Started: - 12:25:44.882632 Duration: 15.199 ms
  Name: rsyslog - Function: service.running - Result: Changed Started: - 12:25:44.921900 Duration: 20.901 ms
  Name: /etc/hosts - Function: file.managed - Result: Changed Started: - 12:25:44.942944 Duration: 12.389 ms
  Name: networking - Function: service.running - Result: Failed Started: - 12:25:44.962487 Duration: 25.229 ms

Summary for ws-testimies666
------------
Succeeded: 4 (changed=3)
Failed:    1
------------
Total states run:     5
Total run time: 376.155 ms
```


