#!/bin/bash
#salt-minion first time conf

sudo apt-get update
sudo apt-get -y install salt-minion
echo -e 'master: 172.28.171.14\nid: testaaja666'|sudo tee /etc/salt/minion

