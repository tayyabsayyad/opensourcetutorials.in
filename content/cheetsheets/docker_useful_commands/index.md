---
title: "Docker Quick Start"
date: "2018-12-25"
description: "Docker Quick Start "
disable_comments: false # Optional, disable Disqus comments if true
authorbox: true # Optional, enable authorbox for specific post
toc: false # Optional, enable Table of Contents for specific post
mathjax: true # Optional, enable MathJax for specific post
categories:
  - "Cheetsheets"
tags:
  - "Cheetsheets"
thumbnail: "img/thumbs/docker.png"

---

In this post we will learn how to quickly start using docker

<!--more-->

-----------------------------------------------------
## 1. Install Dockers on Ubuntu 16.04 or above
-----------------------------------------------------

#### Update the Repository
    $ sudo apt-get update

#### Install ssl related packages

    $ sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

#### Download the GPG key from the docker site
    $ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#### Add docker repository
    $ sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
     $(lsb_release -cs) \
      stable edge test"

#### Update the packages and install docker community edition
    $ sudo apt-get update
    $ sudo apt-get install docker-ce

[![Foo](https://www.vultr.com/media/banners/banner_468x60.png)](https://www.vultr.com/?ref=8528975)

#### Finally check the docker installation is correct
    $ sudo docker run hello-world

#### You can check status, on, off and restart docker using following commands

    $ sudo service docker status
    $ sudo service docker start
    $ sudo service docker stop
    $ sudo service docker restart

#### To run the docker without sudo commands
    $ sudo usermod -aG docker $USER

#### Logout and then check with following command
    $ docker ps -a
    $ docker ps
    ## Docker Hub

-----------------------------------------------------
## 2.Docker Hub
-----------------------------------------------------

#### Signup to https://hub.docker.com/
    one private repository for free and unlimited public repository

#### Explore Following on https://hub.docker.com/
      Explore Official Repositories
     https://hub.docker.com/explore/
      - Explore Mysql official repository
      - Docker Pull Command Syntax and how to use this image
      - Search for wordpress and how to use this image
      - Click on the docker files link which is redirected ot github and check how the wordpress image is built


-----------------------------------------------------
## 3. Base Images
-----------------------------------------------------
#### Check for the availabe images
    $ docker images

#### Search for Docker
    $ docker search ubuntu
    $ docker search apache
    $ docker search cartoview
    $ docker search mysql
    $ docker search httpd

    Examine the output

#### Lets use Docker pull command to get image

Docker will pull the latest version of image

    $ docker pull hello-world

Check the image using docker images command

    $ docker images

Run the docker using docker run command, Its always good to specify the tag

    $ docker run hello-world:latest

You can also run the docker image using its ID which you can get from the docker images output

    $ docker run f2a91732366c

#### Lets pull some useful image from hub

    $ docker images

All below command get the same image

    $ docker pull centos:centos7
    $ docker pull centos:latest
    $ docker pull centos

Following will pull the centos6 image

    $ docker pull centos:centos6

Lets pull some of the ubuntu images, Below command will pull ubuntu 16.04

    $ docker pull ubuntu:latest

Below command will pull ubuntu 17.10

    $ docker pull ubuntu:artful


#### Lets pull nginx
    $ docker pull nginx:latest

#### Getting information from the docker

    $ docker inspect nginx:latest
    $ docker inspect ubuntu:artful
    $ docker inspect centos:centos7

You can also give the ID for inspection

    $ docker inspect 275d79972a86

Observe the details given in the output

## Running Container

We have lots of base images

    $ docker images
    $ docker run hello-world

### Lets pull docker/whalesay image which is built for study of docker

    $ docker search docker-whale
    $ docker pull docker/whalesay
    $ docker run docker/whalesay cowsay hello
    $ docker run docker/whalesay cowsay I AM DOCKER

This container has cowsay application which displays hello

## How to know what all containers are running on our system

    $ docker ps

Why output is nothing ? Containers run and stop.

## Get the list of containers which are stopped and I have run

      $ docker ps -a

      - Each container has unique ID
      - Command shows what executed when it started
      - NAMEs which are used to refer

      $ docker inspect hungry_booth

                  If docker is running then you can see ip address etc.

## Docker Network Interface

      $ ifconfig
          docker0:
          flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
          inet 172.17.0.1  netmask 255.255.0.0  broadcast 172.17.255.255
          inet6 fe80::42:b7ff:fee2:978e  prefixlen 64  scopeid 0x20<link>
          ether 02:42:b7:e2:97:8e  txqueuelen 0  (Ethernet)
          RX packets 0  bytes 0 (0.0 B)
          RX errors 0  dropped 0  overruns 0  frame 0
          TX packets 55  bytes 4903 (4.9 KB)
          TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

          See the range of ip address which docker is going to assign to containers when they are running

          **We are not going to see how to configure the network of the docker interfaces**

## Lets start container and then inspect

    $ docker run -it centos:latest /bin/bash
                        - run : run the container
                        - i   : interactively
                        - t   : connect it to terminal or tty
                        - run centos latest
                        - run /bin/bash command

      Run following command in the container

      $ whoami

      Now open another terminal and run following command It will show you the container is running

      $ docker ps
      $ docker inspect goofy_easley

      To come out of the centos container

      [root@d0756568442e /]# exit

      Exit terminate the container, now you can chech following command

      $ docker ps
      $ docker ps -a

     Why it existed ? Its because the command we run is now terminiated so container


### To run container in the backgroud use -d option

        $ docker run -d centos:latest /bin/bash

        Here command executed and finished

### Lets run the nginx in the background mode

        $ docker run -d nginx:latest
        $ docker ps

    Now here the container is running in the backgroud. It continues to run.

    Now Lets inspect and find the ip address of the container which is running

        $ docker inspect focused_swirles
        $ ping 172.17.0.2

    We are able to ping because the container is running

        $ docker ps
        also tell us that nginx has port 80

        So open the browser and put 172.17.0.2 you can also use elinks terminal based browaser to check the nginx webpage

        You can install elinks as follows

        $ sudo apt install elinks
        $ elinks http://172.17.0.2

        Use q to exit

### To stop nginx container

        $ docker stop focused_swirles

## To start docker with name, start 2nd instance of nginx image

        $ docker run -d --name=MyWeb1 nginx:latest
        $ docker ps

        $ docker inspect MyWeb1
        $ docker stop MyWeb1

    Ip address is from dhcp of docker interface, we we run another container it will get next ip from ip pool.
### To start container again

        $ docker container start MyWeb1


  ## Container Lifecycle

    Lets have a look at all images we have

    $ docker images

    Lets see whether we are running any Container

    $ docker ps

    Lets see history of the Containers we run

    $ docker ps -a

  ## Lifecycle of Container

    $ docker run -d --name=LifeCycle1 nginx:latest
    $ docker ps
    $ ping 172.17.0.2

   Container is running, its ip must be 172.17.0.2

## Attach to the Container

    $docker attach Lifecycle1

    You are attached to the process and not the coommand prompt

    Now if you put CTL + C then you will close the Container

    $ docker ps

  ## Restart Container

    $ docker restart Lifecycle1
    $ docker start Lifecycle1
    $ docker ps

## Run command in the Container with out affecting the Container process

    $ docker exec -it LifeCycle1 /bin/bash
                            - exec execute command
                            - -i interactively
                            - attach to the tty / terminal
                            - execute the /bin/bash command in the container

      Now from here if you exit, container will not exit. It will continue to run

      You have just executed and not attached. If you have attached then it would exit.

## Docker Stop

      $ docker stop LifeCycle1

## Docker Restart or start

    $ docker restart LifeCycle1
    $ docker ps

      ## Image and Container Management

      ### How to deal with images and containers

    $ docker images

    ### Delete image which is not used
        $ docker rmi centos:centos6

    ### Delete the image which is being used
        $ docker rmi hello-world

        This must give error, you can force but its better to first delete the Container

        $ docker rm Container-Name
        $ docker rm Container-ID Container-ID
        $ docker rm fd61930cb2b9

        By force you can delete image
        $ docker rmi -f hello-world

**If you remove images, you will be able to run the containers**

### To stop all non-running Container delete
        $ docker ps -a -q
        $ docker rm `docker ps -a -q`


## Redirection - Ports and Volumes

Lets see which all images we have available

    $ docker images

Lets run the ngins container

    $ docker run -d nginx:latest

To check the Ip address

    $ docker inspect stupefied_ramanujan | grep IPAddr

Check the nginx is running using the elinks

    $elinks 172.17.0.2
    $elinks localhost

Here container will show the web page but the localhost will not.

How to redirect from local port to container ?

Lets stop the container

      $ docker stop stupefied_ramanujan

and also lets remove the container

      $ docker rm `docker ps -a -q`

Above will remove all containers

## Port redirection

      $ docker images
      $ docker run -d --name=WebServer2 -P nginx:latest

-P makes forawarding 32768 to 65000 range

Now You can connect to the container with two ways but lets see the port it is picked for binding

      $ docker ps

In my case port 32768 is picked upby container

$ docker inspect WebServer2

IP address of container is 172.17.0.2

$ elinks 172.17.0.2
$ elinks http://localhost:32768

You will be able to connecct to nginx using both the ways shown above

## To know which port is redirected you can also use follwing command

    $ docker port WebServer2 $CONTAINERPORT

To run bind a specific port like following 8090 we use -p option

    $ docker run -d -p 8090:80 --name=MyWebServer3 nginx:latest

    $ docker ps
Check port which is getting redirected

You can check forwarding using follwing commands

      $ elinks 172.17.0.2
      $ elinks http://localhost:8090

## Mounting Volumes

      $ mkdir www
      $ cd www
      $ vi index.html

Put following code in the index.html
        <html>
        <body>
        <h1>My Custom HTML </h1>
        </body>
        </html>

        $ docker run -d -p 8070:80 --name=WebServer5 -v /home/tayyabali/www:/usr/share/nginx/html nginx:latest

Now you can check the site in the localhost or using ip address of the container as follows
Check Ip

        $ docker ps
        $ docker inspect
        $ elinks 172.17.0.3
        $ elinks http://localhost:8070
        ## Docker File

        $ docker images
        $ docker ps

Stop containers if any running

        $ docker stop CONTAINER_ID/NAME

Lets Cleanup all the containers and keep only images

        $ docker ps -a
        $ docker rm `docker ps -a -q`
        $ docker ps -a
        $ docker ps

Lets build a directory for our build

        $ mkdir build
        $ cd build
        $ docker images
We only now have images

Create a file in build directory
        $ vi Dockerfile

    Put followig text in the Dockerfile

        FROM debian:stable
        MAINTAINER tayyabali <tayyabsayyad@gmail.com>
        RUN apt-get update
        RUN apt-get upgrade
        RUN apt-get install telnet

Then lets build the image using followig command

      $ build$ docker build -t tayyabali/myapache .

You may see this is failed because of the questions it asks

      Do you want to continue? [Y/n] Abort

If build is failed you have only latest debian image available as you can see

      $ docker images

But what happens if we try to pur a unknow command in the file as shown below and build image

      FROM debian:stable
      MAINTAINER tayyabali <tayyabsayyad@gmail.com>
      RUN apt-get update
      RUN apt-get upgrade
      RUN apt-get install telnet
      RUN my-command

Docker uses cache memory for the image layer, When you run commands separately image layers are increased good to combine command together as following

      FROM debian:stable
      MAINTAINER tayyabali <tayyabsayyad@gmail.com>
      RUN apt-get update && apt-get upgrade -y && apt-get install -y telnet apache2 elinks openssh-server

Check the build image

      $ docker images

Lets add environment variables and file looks as followig

      FROM debian:stable
      MAINTAINER tayyabali <tayyabsayyad@gmail.com>

      RUN apt-get update && apt-get upgrade -y && apt-get install -y telnet apache2 elinks openssh-server

      ENV MYVALUE my-value

  and build image again

      $ docker build -t tayyabali/myapache .

                    It will build quickly becaue it used cache

Lets make container from the image

      $ docker run -it tayyabali/myapache:latest /bin/bash

and check the environment variable in container, you can see the value

      $ root@3012264990e9:/# echo $MYVALUE
      my-value

This is the way how you can pass variable in the container which is instantiated
  Lets Clean up again

        $ docker ps -a
        $ docker rm `docker ps -a -q`
        $ docker ps -a
        $ docker ps

Lets change the Dockerfile as follows to expose the ports

        FROM debian:stable
        MAINTAINER tayyabali <tayyabsayyad@gmail.com>

        RUN apt-get update && apt-get upgrade -y && apt-get install -y telnet apache2 elinks openssh-server

        ENV MYVALUE my-value

        EXPOSE 80
        EXPOSE 22

and build the image again

        $ docker build -t tayyabali/myapache .

Lets create the continer based on the image created

        $ docker run -it tayyabali/myapache:latest /bin/bash

Open New Terminal and see ports are now open

        $ docker ps

Exit from the container and remove the container

        $ docker ps -a
        $ docker rm `docker ps -a -q`
        $ docker ps -a
        $ docker ps

Starting apache in the container

Remove the port 22 we dont need that to be exposed and add command to start apache as follows

        FROM debian:stable
        MAINTAINER tayyabali <tayyabsayyad@gmail.com>

        RUN apt-get update && apt-get upgrade -y && apt-get install -y telnet apache2 elinks openssh-server

        ENV MYVALUE my-value

        EXPOSE 80

        CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]

  Build the image again

      $ docker build -t tayyabali/myapache .

  Now once image is built make container as follows, we will run in the -d mode as we have executed commands in the continer

      $ docker run -d tayyabali/myapache:latest
      $ docker ps
      $ docker inspect CONTAINER_ID

Now check the apache page

    $ elinks 172.17.0.2

Now you can do port redirection, valume management

You can also connect to the container as follows

    $ docker exec -it fervent_visvesvaraya /bin/bash
    root@c4ecaf1aa2fe:/# ps aux | grep apache
    root@c4ecaf1aa2fe:/# echo $MYVALUE

See apache is running and MYVALUE is also set

  Exit and check ps it will be still running

    root@c4ecaf1aa2fe:/# exit
    $ docker ps

To learn more about the docker files check the official repositories images docker files.
