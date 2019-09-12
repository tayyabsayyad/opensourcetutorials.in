---
title: "Installation of Skype on Manjaro Linux  "
date: "2019-09-08"
description: "Installation of Skype on Manjaro Linux ! "
disable_comments: false # Optional, disable Disqus comments if true
authorbox: true # Optional, enable authorbox for specific post
toc: false # Optional, enable Table of Contents for specific post
mathjax: true # Optional, enable MathJax for specific post
categories:
  - "Linux"

tags:
  - "Linux"

---

In this post we will learn install skype in Manjaro Linux !

<!--more-->

{{< youtube bm3PXbxML3w >}}

<br><br>

    git clone https://aur.archlinux.org/skypeforlinux-stable-bin

    cd skypeforlinux-stable-bin/

    makepkg -s

    ls *pkg.tar.xz

    sudo pacman -U --noconfirm skypeforlinux-stable-bin-8.33.0.41-1-x86_64.pkg.tar.xz
