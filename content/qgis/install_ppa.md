---
title: " How to Install QGIS in Ubuntu "
date: "2018-12-06"
description: "How to Install QGIS in Ubuntu"
disable_comments: false # Optional, disable Disqus comments if true
authorbox: true # Optional, enable authorbox for specific post
toc: false # Optional, enable Table of Contents for specific post
draft: true
mathjax: true # Optional, enable MathJax for specific post
categories:
  - "GIS"
tags:
  - "QGIS"
---

## Install QGIS in Ubuntu

    deb     https://qgis.org/ubuntugis bionic main
    deb-src https://qgis.org/ubuntugis bionic main


sudo apt-get update
sudo apt-get install qgis python-qgis qgis-plugin-grass


sudo apt-get update
sudo apt-get install qgis-server python-qgis
