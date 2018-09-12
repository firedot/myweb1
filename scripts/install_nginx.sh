#!/usr/bin/env bash

PKG="nginx"
which ${PKG}  || {
   apt-get update -y 
    apt-get install -y ${PKG}
} 

#to make sure we are where our files are like travis
[ -d /vagrant ] && pushd /vagrant

#use our conf file
[ -f /etc/nginx/sites-enabled/default ] && sudo rm /etc/nginx/sites-enabled/default
sudo cp nginx.conf /etc/nginx/sites-enabled/default
service nginx restart

#deploy our webpage
sudo cp index.html /var/www/html/
