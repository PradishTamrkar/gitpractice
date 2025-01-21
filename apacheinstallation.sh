#!/bin/bash

sudo apt install apache2 -y

#start apache2 service
sudo systemctl start apache2

#enable apache2 service
sudo systemctl enable apache2

#chcek the status of apache2 swervice

if [ -f /var/run/apache2/apache2.pid ]
then
	echo "apache2 is running"
else
then
	echo"apache2 is not running, starting it now"
	sudo systemctl start apache2
fi

