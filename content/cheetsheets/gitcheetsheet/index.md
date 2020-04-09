---
title: " Git Quick Start"
date: "2018-12-25"
description: ""
disable_comments: false # Optional, disable Disqus comments if true
authorbox: true # Optional, enable authorbox for specific post
toc: false # Optional, enable Table of Contents for specific post
mathjax: true # Optional, enable MathJax for specific post
categories:
  - "Linux"
tags:
  - "Cheetsheets"

thumbnail: "img/thumbs/git.png"

---
In this post we will learn basic commands to get started with git and github

<!--more-->

### Install Git on Linux
    $sudo apt install git-all

### Initilize directory as git directory
    $git init

## Initilize the configurations
    $ git config --global user.name "Yeor Name "
    $ git config --global user.email email@example.com

### Clonning the github repo
    $git clone /path/to/repository

### Add files to git
    $git add <filename>
    $git add *

### Commit the Changes
    $git commit -m "Commit message"


### Push changes to git server
    $git push origin master

### Add Origin master if not added
    $git remote add origin <server>

### Branching

    Create a branch
    $git checkout -b feature_x

    Switch back to master branch
    $git checkout master

    Delete the branch again
    $git branch -d feature_x

    Push the branch on the server
    $git push origin <branch>

## Update Local repository
    $ git pull

    Merge another branch into your active branch (e.g. master), use
    $git merge <branch>


Reference : http://rogerdudler.github.io/git-guide/
