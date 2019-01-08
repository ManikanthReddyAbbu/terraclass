#!/bin/bash
sudo apt-get update -y
sudo apt-get install mysql-client -y
sudo apt-get install apache2 -y
sudo apt-get install php5 -y
sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt php5-curl php5-gd php5-xmlrp -y
sudo apt-get install php5-mysqlnd-ms -y
sudo service apache2 restart
