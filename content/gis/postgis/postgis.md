---
title: " Installation of Postgis and Geoserver on Ubuntu 18.04 "
date: "2019-09-06"
description: "Installation of the PostGIs and Geoserver ! "
disable_comments: false # Optional, disable Disqus comments if true
authorbox: true # Optional, enable authorbox for specific post
toc: false # Optional, enable Table of Contents for specific post
mathjax: true # Optional, enable MathJax for specific post
categories:
  - "postgis"
  - "geoserver"
tags:
  - "postgis"
  - "geoserver"

thumbnail: "img/thumbs/postgis.png"

resource: geoserver
---

In this post we will learn install the geoserver and postgis on ubuntu 18.04

<!--more-->

### Install openjdk

    sudo su
    apt-get install openjdk-8-jre

### PostgreSQL and PostGIS

    apt-get install postgresql postgresql-contrib postgis postgresql-10-postgis-2.4

### Create "geoserver" database and add extension for PostGIS

    sudo -u postgres createuser -P geoserver
    sudo -u postgres createdb -O geoserver geoserver
    sudo -u postgres psql -c "CREATE EXTENSION postgis; CREATE EXTENSION postgis_topology;" geoserver

### GeoServer install
    apt install unzip
    mkdir -p /var/www/geoserver
    cd /var/www/geoserver
    wget https://netcologne.dl.sourceforge.net/project/geoserver/GeoServer/2.15.2/geoserver-2.15.2-bin.zip
    unzip geoserver-2.15.2-bin.zip

    mv geoserver-2.15.2/* .
    echo "export GEOSERVER_HOME=/var/www/geoserver" >> ~/.profile
    . ~/.profile

### Starting GeoServer remember to change directory to /var/www/geoserver  
    ./bin/startup.sh


### To restart
    sudo sh /var/www/geoserver/bin/startup.sh

### In the browser open http://localhost:8080/geoserver/web/
    If you are on the server use http://IP:8080/geoserver/web
    Default username and password is admin and geoserver


![Geoserver](/img/postimages/geoserver.png)
