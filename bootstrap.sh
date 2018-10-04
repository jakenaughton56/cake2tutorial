#!/usr/bin/env bash

apt-get update

echo mysql-server-5.5 mysql-server/root_password password PASSWORD | debconf-set-selections
echo mysql-server-5.5 mysql-server/root_password_again password PASSWORD | debconf-set-selections

apt-get install -y mysql-common mysql-server mysql-client

apt-get install -y apache2

apt-get install -y php7 libapache2-mod-php7.1 php5-mysql
# apt-get install -y php5-mysql php5-curl php5-gd php5-intl php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-ming php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl

apt-get install -y vim

/etc/init.d/apache2 restart

rm -rf /var/www
ln -fs /vagrant/cakephp-2.10.12 /var/www
