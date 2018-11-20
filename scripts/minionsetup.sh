#!/bin/bash
#salt-minion first time conf

HOSTNAME="$(hostname -I)"
#1 if salt-master is installed, 0 if not
MASTEREXISTS="$(dpkg-query -l | grep salt-master | wc -l)"
echo "input desired id for minion"
read SLAVE

sudo apt-get update
sudo apt-get -y install salt-minion

#checks if salt-master is installed, so we don't have to input ip
#manually when installing minion and master on the same computer
if [ ${MASTEREXISTS} == 1 ]
then
	echo -e 'master: '$HOSTNAME'\nid: '$SLAVE|sudo tee /etc/salt/minion
else
	echo "enter master hostname"
	read MANUALHOSTNAME
	echo -e 'master: '$MANUALHOSTNAME'\nid: '$SLAVE|sudo tee /etc/salt/minion
fi
sudo systemctl restart salt-minion.service
echo 'Minion setup complete!'
