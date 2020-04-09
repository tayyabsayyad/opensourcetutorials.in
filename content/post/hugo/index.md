---
title: "How to deploy Hugo blog on Github/Gitlab"
date: "2020-04-08"
description: "How to deloy hugo blog on github and gitlab  "
disable_comments: false # Optional, disable Disqus comments if true
authorbox: true # Optional, enable authorbox for specific post
toc: false # Optional, enable Table of Contents for specific post
mathjax: true # Optional, enable MathJax for specific post
categories:
  - "Linux"
tags:
  - "Hugo"
thumbnail: "img/thumbs/hugo.jpg"
---

In this post we will learn develop and deploy Hugo static website on github/gitlab

<!--more-->

## Step 1 : Install Hugo

  You can download and install hugo based on your operating system. from the following site.

  https://github.com/gohugoio/hugo/releases

  On linux machines you can use snap as follows.

      $ sudo snap install hugo

  To install .deb package use following command to install deb package

      $ sudo dpkg -i hugo*linux-64bit.deb


## Step 2 : Creating new site
In order to initilize the directory structure of hugo website we will use hugo create new site command

    $ hugo new site tayyabsayyad.github.io

Give the name of the directory as the same name of the reppository. Reository name is as follows,

`your_github_account_name.github.io`

## Step 3 : Add a Theme

Now you will need a theme for your website. You can visit https://themes.gohugo.io/ and find a theme which you like.
then you will clone it into the theme directory of newely created website.

    $ cd tayyabsayyad.github.io
    $ cd themes
    $ git init
    $ git submodule add https://github.com/knadh/hugo-ink.git

4. Add theme name to config.toml


5. Adding Content

   hugo new posts/my-first-post.md


6. Adding Front Matters

        ---
        title: "My First Post"
        date: 2019-03-26T08:47:11+01:00
        draft: true
        ---

7. Start the Hugo server with drafts enabled

    hugo server -D

8. Customize the Theme in the config.toml

    Use examle site config.toml for help


9. Build static pages

   hugo -D

    Output in /public/ directory by default
    -d flag to change it
    - set publishdir in the config file

10. Hosting on git

    https://pages.github.com/



<!--more-->
