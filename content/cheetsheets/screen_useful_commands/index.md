---
title: "Screen : Terminal Multiplexer"
date: "2018-12-29"
description: "Screen is Terminal Multiplexer"
disable_comments: false # Optional, disable Disqus comments if true
authorbox: true # Optional, enable authorbox for specific post
toc: false # Optional, enable Table of Contents for specific post
mathjax: true # Optional, enable MathJax for specific post
categories:
  - "Cheetsheets"
tags:
  - "Cheetsheets"

thumbnail: "img/thumbs/screen.png"

---
Cheetsheet for Screen which is Terminal Multiplexer, Allows you to use multiple screens.
<!--more-->

#### Necessary and sufficient screen commands to get started with no deep required

#### Install screen

    sudo apt install screen

#### Start screen using screen command

    screen

Following are the commands to work with multiple screens

+ `screen`     : Start screen
+ `Ctl + a  d` : Deattach from the working Terminal
+ `screen -ls` : List all screen sessions
+ `Ctrl+d `    : Kill a window
+ `screen -x session_name` : Reattach a session using its name
+ `Ctrl+a p` : Switch with the previous/next window
+ `Ctrl+a n ` : Switch with the next window


### Examples

Created a screen using -S and name as hugo and then detached using `ctrl+a d`

      tayyabali:~$ screen -S hugo
      [detached from 8914.hugo]

Check whether hugo screen is created or not after detaching the screen

    tayyabali:~$ screen -ls
    There is a screen on:
	   8914.hugo	(Saturday 29 December 2018 09:38:41  IST)	(Detached)
     1 Socket in /run/screen/S-tayyabali.

Reattach using the name

    tayyabali:~$ screen -x hugo
    ###
    ### Terminal will display the activity going on
    ### use `ctr + a d` to detach again
    [detached from 8914.hugo]
