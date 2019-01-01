---
title: " How to Install QGIS in Ubuntu "
date: "2018-12-23"
description: "How to Install QGIS in Ubuntu"
disable_comments: false # Optional, disable Disqus comments if true
authorbox: true # Optional, enable authorbox for specific post
toc: false # Optional, enable Table of Contents for specific post
draft: false
mathjax: true # Optional, enable MathJax for specific post
categories:
  - "GIS"
tags:
  - "QGIS"
---

## 1. Install QGIS in Ubuntu

QGIS woks on following platforms

1. Linux
2. Windows
3. Mac OS X

The download all above versions at  https://qgis.org/en/site/forusers/download.html this link.


To add repositories into the sources.list file use following command

    $ sudo gedit /etc/apt/sources.list

To install QGIS using ppa on <b>Ubuntu 18.04</b>, Use following repositories to `/etc/apt/sources.list`

    deb     https://qgis.org/ubuntugis bionic main
    deb-src https://qgis.org/ubuntugis bionic main


To install QGIS using ppa on <b>Ubuntu 16.04</b>, Use following repositories to `/etc/apt/sources.list`

    deb     https://qgis.org/ubuntugis xenial main
    deb-src https://qgis.org/ubuntugis xenial main


and then use following command to install QGIS

    sudo apt-get update
    sudo apt-get install qgis python-qgis qgis-plugin-grass

To install QGIS Server use following commands

    sudo apt-get update
    sudo apt-get install qgis-server python-qgis

## 2. Install QGIS Using Flatpacks on all Linux distributions

### Install Flatpak

    sudo add-apt-repository ppa:alexlarsson/flatpak
    sudo apt update
    sudo apt install flatpak

    # Install the Software Flatpak plugin
    sudo apt install gnome-software-plugin-flatpak

    # Add the Flathub repository

     flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

Install QGIS using flatpack https://flathub.org/apps/details/org.qgis.qgis

      flatpak install flathub org.qgis.qgis
      flatpak run org.qgis.qgis

To update flatpack

      flatpak update

## 3. Windows 10 Installation

  {{< youtube pzUy3NJld0s>}}
