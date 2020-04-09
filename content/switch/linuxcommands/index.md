---
title: " Linux Commands Examples "
date: "2019-09-09"
description: ""
disable_comments: false # Optional, disable Disqus comments if true
authorbox: true # Optional, enable authorbox for specific post
toc: false # Optional, enable Table of Contents for specific post
mathjax: true # Optional, enable MathJax for specific post
categories:
  - "Cheetsheets"
tags:
  - "Commands"
thumbnail: "img/thumbs/linuxcommands.png"

---

In this post we will see all linux commands with detailed examples.

<!--more-->

I sincerely thank <a href="https://www.linkedin.com/in/sushree-satapathy-481a1948/"> Sushree Satapathy </a> for her time and efforts for contributing this article and open source community.

# whatis
Display one-line manual page descriptions

    sushree@Sushree:/$ whatis pwd
    pwd (1)          - print name of current/working directory

# whereis
To find the source, binary, and manuals sections for specified commands or files

    sushree@Sushree:~/Desktop/opensourcetutorial$ whereis ls
    ls: /bin/ls /usr/share/man/man1/ls.1.gz

# who
Shows who is logged on

    sushree@Sushree:/$ who
    sushree  :0           2019-02-10 11:52 (:0)
    sushree  pts/0        2019-02-10 12:46 (:0)

# who am  i
Print  the  user  name  associated  with the current effective user ID.

    sushree@Sushree:/$ who am i
    sushree  pts/0        2019-02-10 12:46 (:0)

# cat
Concatenate files and print on the standard output

SYNTAX : cat [OPTION]... [FILE]...

    sushree@Sushree:~/Desktop/opensourcetutorial$ ls
    hello.txt  hello.txt~  welcome.txt  welcome.txt~
    sushree@Sushree:~/Desktop/opensourcetutorial$ cat hello.txt welcome.txt
    Hello World..!!
    Welcome to www.opensourcetutorials.in

# cal
Displays a calendar

    sushree@Sushree:~/Desktop/opensourcetutorial$ cal
    February 2019      
    Su Mo Tu We Th Fr Sa  
                    1  2  
    3  4  5  6  7  8  9  
    10 11 12 13 14 15 16  
    17 18 19 20 21 22 23  
    24 25 26 27 28

# pwd
Print name of current/working directory

SYNTAX : pwd [OPTION]...

    sushree@Sushree:~$ pwd
    /home/sushree

# ls
 List directory contents

 SYNTAX : ls [OPTION]... [FILE]...

    sushree@Sushree:~$ ls
    Desktop    Downloads         Music     Public     Videos
    Documents  examples.desktop  Pictures  Templates  VirtualBox VMs

**Note** : The directories are listed in lexicographical order.

### ***-r***
 *reverse* order while sorting

    sushree@Sushree:~$ ls -r
    VirtualBox VMs  Templates  Pictures  examples.desktop  Documents
    Videos          Public     Music     Downloads         Desktop


### ***-l***
use a *long listing* format

    sushree@Sushree:~$ ls -l
    total 48
    drwxr-xr-x 2 sushree sushree 4096 Jan 18 12:14 Desktop
    drwxr-xr-x 2 sushree sushree 4096 Aug 10  2018 Documents
    drwxr-xr-x 3 sushree sushree 4096 Feb  5 23:07 Downloads
    -rw-r--r-- 1 sushree sushree 8980 May 12  2017 examples.desktop
    drwxr-xr-x 2 sushree sushree 4096 May 12  2017 Music
    drwxr-xr-x 2 sushree sushree 4096 Apr 16  2018 Pictures
    drwxr-xr-x 2 sushree sushree 4096 May 12  2017 Public
    drwxr-xr-x 2 sushree sushree 4096 May 12  2017 Templates
    drwxr-xr-x 2 sushree sushree 4096 May 12  2017 Videos
    drwxrwxr-x 4 sushree sushree 4096 Jan 21 22:36 VirtualBox VMs


The information can be broken down into ten fields as shown below. Let us consider the Desktop directory.

`drwxr-xr-x 2 sushree sushree 4096 Jan 18 12:14 Desktop`

|Detail | Description|
|:---:| ---|
|d | file type|
|rwx | owner's mode of access(permission)|
|r-x | group's mode of access(permission)|
|r-x | other's mode of access(permission)|
|2 | number of hard links|
|sushree | owner of the file|
|sushree | group of the file|
|4096 | size of the file in bytes|
|Aug 10  2018 | last modified time stamp|
|Desktop | Name|


`**d**rwxr-xr-x 2 sushree sushree 4096 Jan 18 12:14 Desktop `


The first field **file type** can be of the following types:

|Detail | FileType | Description|
|:---:|:---: | ---|
| d | Directory | A file used to store other files.|
| - | Regular file | Includes readable files, images files, binary files, and compressed files.|
| l | Symbolic link | Points to another file.|
| s | Socket | Allows for communication between processes.(duplex)|
| p | Pipe | Allows for communication between processes executed under different user names and permission.(unidirectional)|
| b | Block file | Used to communicate with hardware.(read/write data in blocks)|
| c | Character file | Used to communicate with hardware.(read/write data character by character)|

<br>
d**rwxr-xr-x** 2 sushree sushree 4096 Jan 18 12:14 Desktop
<br>

The next nine set of characters indicate the **permissions/mode of access** o the file. There are three different types of permissions as shown below
Permission | Effect on file | Effects on directory


| Permisson | Use | Description|
|:---:|:---: | ---|
| Read ( r ) | Allows for file contents to be read or copied. | Without execute permission on the directory, allows for a non-detailed listing of files. With execute permission, ls -l can provide a detailed listing.
|Write ( w ) | Allows for contents to be modified or overwritten. Allows for files to be added or removed from a directory. | For this permission to work, the directory must also have execute permission.
|Execute( x) | Allows for a file to be run as a process, although script files require read permission, as well. | Allows a user to change to the directory if parent directories have write permission as well.

The nine characters can be broken down into sets of three. They correspond to the owner of the file, the group that own's the file and others(excluding the owner and the group)

In case of the Desktop directory, the owner has read, write and execute permission, the group which owns the directory has read and execute permission & the others have read and execute permission.

----------------------------------------------------------------------------
drwxr-xr-x **2** sushree sushree 4096 Jan 18 12:14 Desktop

    The next field indicates the number of hard links to the file.

----------------------------------------------------------------------------

drwxr-xr-x 2 **sushree** sushree 4096 Jan 18 12:14 Desktop

    The next field indicates the owner of the file.

----------------------------------------------------------------------------

drwxr-xr-x 2 sushree **sushree** 4096 Jan 18 12:14 Desktop

    The next field indicates the group that owns the file.

----------------------------------------------------------------------------

drwxr-xr-x 2 sushree sushree **4096** Jan 18 12:14 Desktop

    The field that follows is the size of the file in bytes.

----------------------------------------------------------------------------

drwxr-xr-x 2 sushree sushree 4096 **Jan 18 12:14** Desktop

    The next field is the last modified date of thee file.

----------------------------------------------------------------------------

drwxr-xr-x 2 sushree sushree 4096 Jan 18 12:14 **Desktop**

    The last field  is the name of file.

----------------------------------------------------------------------------

**Linux command options can be combined without a space between them and with a single - (dash).**


The following are the file types
### -lr
Long listing format in the reverse order

    sushree@Sushree:~$ ls -lr
    total 48
    drwxrwxr-x 4 sushree sushree 4096 Jan 21 22:36 VirtualBox VMs
    drwxr-xr-x 2 sushree sushree 4096 May 12  2017 Videos
    drwxr-xr-x 2 sushree sushree 4096 May 12  2017 Templates
    drwxr-xr-x 2 sushree sushree 4096 May 12  2017 Public
    drwxr-xr-x 2 sushree sushree 4096 Apr 16  2018 Pictures
    drwxr-xr-x 2 sushree sushree 4096 May 12  2017 Music
    -rw-r--r-- 1 sushree sushree 8980 May 12  2017 examples.desktop
    drwxr-xr-x 3 sushree sushree 4096 Feb  5 23:07 Downloads
    drwxr-xr-x 2 sushree sushree 4096 Aug 10  2018 Documents
    drwxr-xr-x 2 sushree sushree 4096 Jan 18 12:14 Desktop

**Note** : The order of the options doesnot affect the output.

    sushree@Sushree:~$ ls -rl
    total 48
    drwxrwxr-x 4 sushree sushree 4096 Jan 21 22:36 VirtualBox VMs
    drwxr-xr-x 2 sushree sushree 4096 May 12  2017 Videos
    drwxr-xr-x 2 sushree sushree 4096 May 12  2017 Templates
    drwxr-xr-x 2 sushree sushree 4096 May 12  2017 Public
    drwxr-xr-x 2 sushree sushree 4096 Apr 16  2018 Pictures
    drwxr-xr-x 2 sushree sushree 4096 May 12  2017 Music
    -rw-r--r-- 1 sushree sushree 8980 May 12  2017 examples.desktop
    drwxr-xr-x 3 sushree sushree 4096 Feb  5 23:07 Downloads
    drwxr-xr-x 2 sushree sushree 4096 Aug 10  2018 Documents
    drwxr-xr-x 2 sushree sushree 4096 Jan 18 12:14 Desktop

### ***-t***
sort by modification time, newest first

    sushree@Sushree:~$ ls -lt
    total 48
    drwxr-xr-x 3 sushree sushree 4096 Feb  5 23:07 Downloads
    drwxrwxr-x 4 sushree sushree 4096 Jan 21 22:36 VirtualBox VMs
    drwxr-xr-x 2 sushree sushree 4096 Jan 18 12:14 Desktop
    drwxr-xr-x 2 sushree sushree 4096 Aug 10  2018 Documents
    drwxr-xr-x 2 sushree sushree 4096 Apr 16  2018 Pictures
    drwxr-xr-x 2 sushree sushree 4096 May 12  2017 Music
    drwxr-xr-x 2 sushree sushree 4096 May 12  2017 Public
    drwxr-xr-x 2 sushree sushree 4096 May 12  2017 Templates
    drwxr-xr-x 2 sushree sushree 4096 May 12  2017 Videos
    -rw-r--r-- 1 sushree sushree 8980 May 12  2017 examples.desktop

### ***-lrt***
sort by modification time and reverse order for the same modification time stamp

    sushree@Sushree:~$ ls -lrt
    total 48
    -rw-r--r-- 1 sushree sushree 8980 May 12  2017 examples.desktop
    drwxr-xr-x 2 sushree sushree 4096 May 12  2017 Videos
    drwxr-xr-x 2 sushree sushree 4096 May 12  2017 Templates
    drwxr-xr-x 2 sushree sushree 4096 May 12  2017 Public
    drwxr-xr-x 2 sushree sushree 4096 May 12  2017 Music
    drwxr-xr-x 2 sushree sushree 4096 Apr 16  2018 Pictures
    drwxr-xr-x 2 sushree sushree 4096 Aug 10  2018 Documents
    drwxr-xr-x 2 sushree sushree 4096 Jan 18 12:14 Desktop
    drwxrwxr-x 4 sushree sushree 4096 Jan 21 22:36 VirtualBox VMs
    drwxr-xr-x 3 sushree sushree 4096 Feb  5 23:07 Downloads

# cd
Change the shell working directory



SYNTAX : cd [options] [path]

    sushree@Sushree:~$ pwd
    /home/sushree
    sushree@Sushree:~$ ls
    Desktop    Downloads         Music     Public     Videos
    Documents  examples.desktop  Pictures  Templates  VirtualBox VMs
    sushree@Sushree:~$ cd Desktop
    sushree@Sushree:~/Desktop$ pwd
    /home/sushree/Desktop

### cd ..
Change the shell to *parent directory*

    sushree@Sushree:~/Desktop$ pwd
    /home/sushree/Desktop
    sushree@Sushree:~/Desktop$ cd ..
    sushree@Sushree:~$ pwd
    /home/sushree

### cd ~
Change directory to the *home directory* of the current user

    sushree@Sushree:~/Desktop/opensourcetutorial$ pwd
    /home/sushree/Desktop/opensourcetutorial
    sushree@Sushree:~/Desktop/opensourcetutorial$ cd ~
    sushree@Sushree:~$ pwd
    /home/sushree

### cd using absolute path

    sushree@Sushree:~$ pwd
    /home/sushree
    sushree@Sushree:~$ cd /home/sushree/Desktop/opensourcetutorial/
    sushree@Sushree:~/Desktop/opensourcetutorial$ pwd
    /home/sushree/Desktop/opensourcetutorial

### cd using relative path

    sushree@Sushree:~$ pwd
    /home/sushree
    sushree@Sushree:~$ cd Desktop/opensourcetutorial/
    sushree@Sushree:~/Desktop/opensourcetutorial$ pwd
    /home/sushree/Desktop/opensourcetutorial

###  cd command
Change directory two directories up

    sushree@Sushree:~$ cd Desktop/opensourcetutorial/
    sushree@Sushree:~/Desktop/opensourcetutorial$ cd ../../
    sushree@Sushree:~$ pwd
    /home/sushree
    sushree@Sushree:~$


### chmod

Change the file permissions (mode of access)

There are two techniques

#### 1. Symbolic Method
SYNTAX : chmod [<WHO><OPERATOR><PERMISSIONS>]... FILE

Use combinations of letters and symbols to add or remove permissions.

The who are indicated using the following characters

|Symbol | Meaning|
|:---:| ---|
|u | User: The user who owns the file.|
|g | Group: The group who owns the file.|
|o | Others: Anyone other than the user owner or member of the group owner.|
|a | All: Refers to the user, group and others.|

The operators can be indicated using the following characters

|Symbol | Meaning|
|:---:|:---:|
|+ | Add the permission|
|= | Assign the permission|
|- |Remove the permission|

The permissions can be indicated using the following characters

|Symbol | Meaning|
|:---:|:---:|
| r | read |
| w | write |
| x | execute |

The option will be followed by the path to the file whose permission is to be modified.

    sushree@Sushree:~/Desktop/opensourcetutorial$ ls -l
    total 4
    drwxrwxr-x 2 sushree sushree 4096 Feb 10 23:42 sush.txt
    sushree@Sushree:~/Desktop/opensourcetutorial$ chmod u-w sush.txt
    sushree@Sushree:~/Desktop/opensourcetutorial$ ls -l
    total 4
    dr-xrwxr-x 2 sushree sushree 4096 Feb 10 23:42 sush.txt

#### 2. Absolute Method
 SYNTAX : chmod [OPTION]... OCTAL-MODE FILE...

Use numbers to represent the permissions where each triplet is an octal number

The following is the list of octal values for setting the file permissions

|Octal Value | File Permissions Set | Permissions Description|
|:---:|:---:| ---|
|0 | --- | No permissions|
|1 | --x | Execute permission only|
|2 | -w- | Write permission only|
|3 | -wx | Write and execute permissions|
|4 | r-- | Read permission only|
|5 | r-x | Read and execute permissions|
|6 | rw- | Read and write permissions|
|7 | rwx | Read, write, and execute permissions|

    sushree@Sushree:~/Desktop/opensourcetutorial$ ls -l
    total 4
    dr-xrwxr-x 2 sushree sushree 4096 Feb 10 23:42 sush.txt

    sushree@Sushree:~/Desktop/opensourcetutorial$ chmod 775 sush.txt

    sushree@Sushree:~/Desktop/opensourcetutorial$ ls -l
    total 4
    drwxrwxr-x 2 sushree sushree 4096 Feb 10 23:42 sush.txt

The octal nnumber 775 represents rwx rwx r-x. Therefore, the users gets the write access back.

# chown
Change file owner and group

Changing ownership requires administrative access. Even an owner does noot have the right to give ownership of his file to another user. However, group ownership does not require administrative rights.

SYNTAX : chown [OPTIONS] [OWNER] FILE

**Changing user ownership**

    sushree@Sushree:~/Desktop/opensourcetutorial$ ls -l
    total 8
    -rw-rw-r-- 1 sushree sushree 16 Feb 11 00:49 hello.txt
    -rw-rw-r-- 1 sushree sushree 38 Feb 11 00:49 welcome.txt

    sushree@Sushree:~/Desktop/opensourcetutorial$ sudo su
    [sudo] password for sushree:

    root@Sushree:/home/sushree/Desktop/opensourcetutorial# chown root hello.txt
    root@Sushree:/home/sushree/Desktop/opensourcetutorial# ls -l
    total 8
    -rw-rw-r-- 1 root    sushree 16 Feb 11 00:49 hello.txt
    -rw-rw-r-- 1 sushree sushree 38 Feb 11 00:49 welcome.txt

**Changing group ownership**

    root@Sushree:/home/sushree/Desktop/opensourcetutorial# ls -l
    total 8
    -rw-rw-r-- 1 sushree sushree 16 Feb 11 00:49 hello.txt
    -rw-rw-r-- 1 sushree sushree 38 Feb 11 00:49 welcome.txt

    root@Sushree:/home/sushree/Desktop/opensourcetutorial# chown root:root hello.txtroot@Sushree:/home/sushree/Desktop/opensourcetutorial# ls -l
    total 8
    -rw-rw-r-- 1 root    root    16 Feb 11 00:49 hello.txt
    -rw-rw-r-- 1 sushree sushree 38 Feb 11 00:49 welcome.txt


# mv
It is a file management command used to Rename SOURCE to DEST, or move SOURCE(s) to DIRECTORY.

SYNTAX : mv SOURCE DESTINATION

The **mv** command requires two arguments. The first argument is the path of the file to be moved (**source**) and the second is the path where the file is to be moved (**destination**).

If the file is moved from source to destination without specfying a new name, it will retain its old name.

    sushree@Sushree:~/Desktop$ ls
    opensourcetutorial  osgeolive-12.0-vm.7z  osgeolive-12.0-vm.vmdk

    sushree@Sushree:~/Desktop$ cd opensourcetutorial/

    sushree@Sushree:~/Desktop/opensourcetutorial$ ls
    hello.txt  welcome.txt

    sushree@Sushree:~/Desktop/opensourcetutorial$ mv hello.txt /home/sushree/Desktop/

    sushree@Sushree:~/Desktop/opensourcetutorial$ cd ..

    sushree@Sushree:~/Desktop$ ls
    hello.txt  opensourcetutorial  osgeolive-12.0-vm.7z  osgeolive-12.0-vm.vmdk

however, the file can be renamed using the **mv** command by specifying the new name in the destination argument.

    sushree@Sushree:~/Desktop$ ls
    hello.txt  opensourcetutorial  osgeolive-12.0-vm.7z  osgeolive-12.0-vm.vmdk

    sushree@Sushree:~/Desktop$ mv hello.txt /home/sushree/Desktop/opensourcetutorial/newhello.txt

    sushree@Sushree:~/Desktop$ cd opensourcetutorial/

    sushree@Sushree:~/Desktop/opensourcetutorial$ ls
    newhello.txt  welcome.txt

Moving the file in the same directory will result in renaming the file.

    sushree@Sushree:~/Desktop/opensourcetutorial$ ls
    newhello.txt  welcome.txt

    sushree@Sushree:~/Desktop/opensourcetutorial$ mv newhello.txt rename.txt

    sushree@Sushree:~/Desktop/opensourcetutorial$ ls
    rename.txt  welcome.txt


Multiple files can be moved using the **mv command**

    sushree@Sushree:~/Desktop/opensourcetutorial$ ls
    rename.txt  welcome.txt

    sushree@Sushree:~/Desktop/opensourcetutorial$ mv rename.txt welcome.txt /home/sushree/Desktop/

    sushree@Sushree:~/Desktop/opensourcetutorial$ ls

    sushree@Sushree:~/Desktop/opensourcetutorial$ cd ..

    sushree@Sushree:~/Desktop$ ls
    opensourcetutorial    osgeolive-12.0-vm.vmdk  welcome.txt
    osgeolive-12.0-vm.7z  rename.txt

**mv** command requires ***write*** and ***execute*** permission on both the source and destination.

    sushree@Sushree:~/Desktop$ ls -l
    total 14118052
    -rw-rw-r-- 1 sushree sushree          17 Feb 17 21:07 hello.txt
    drwxrwxr-x 2 sushree sushree        4096 Feb 17 21:11 opensourcetutorial
    -rw-r--r-- 1 sushree sushree  3359521331 Jan 16 07:28 osgeolive-12.0-vm.7z
    -rw------- 1 sushree sushree 11097341952 Jan 21 22:35 osgeolive-12.0-vm.vmdk
    -rw-rw-r-- 1 sushree sushree          38 Feb 11 00:49 welcome.txt

    sushree@Sushree:~/Desktop$ mv hello.txt /home/sushree/Desktop/opensourcetutorial/hello.txt

    sushree@Sushree:~/Desktop$ ls -l
    total 14118048
    drwxrwxr-x 2 sushree sushree        4096 Feb 17 21:12 opensourcetutorial
    -rw-r--r-- 1 sushree sushree  3359521331 Jan 16 07:28 osgeolive-12.0-vm.7z
    -rw------- 1 sushree sushree 11097341952 Jan 21 22:35 osgeolive-12.0-vm.vmdk
    -rw-rw-r-- 1 sushree sushree          38 Feb 11 00:49 welcome.txt

    sushree@Sushree:~/Desktop$ chmod u-w opensourcetutorial/
    sushree@Sushree:~/Desktop$ chmod u-x opensourcetutorial/

    sushree@Sushree:~/Desktop$ ls -l
    total 14118048
    dr--rwxr-x 2 sushree sushree        4096 Feb 17 21:12 opensourcetutorial
    -rw-r--r-- 1 sushree sushree  3359521331 Jan 16 07:28 osgeolive-12.0-vm.7z
    -rw------- 1 sushree sushree 11097341952 Jan 21 22:35 osgeolive-12.0-vm.vmdk
    -rw-rw-r-- 1 sushree sushree          38 Feb 11 00:49 welcome.txt

    sushree@Sushree:~/Desktop$ mv welcome.txt /home/sushree/Desktop/opensourcetutorial/
    mv: cannot stat ‘/home/sushree/Desktop/opensourcetutorial/welcome.txt’: Permission denied

# cp
Copy SOURCE to DEST, or multiple SOURCE(s) to DIRECTORY.

SYNTAX : cp [OPTIONS] SOURCE DESTINATION

    sushree@Sushree:~/Desktop$ ls -l
    total 14118052
    -rw-rw-r-- 1 sushree sushree          17 Feb 17 21:07 hello.txt
    drwxrwxr-x 2 sushree sushree        4096 Feb 17 21:12 opensourcetutorial
    -rw-r--r-- 1 sushree sushree  3359521331 Jan 16 07:28 osgeolive-12.0-vm.7z
    -rw------- 1 sushree sushree 11097341952 Jan 21 22:35 osgeolive-12.0-vm.vmdk
    -rw-rw-r-- 1 sushree sushree          38 Feb 11 00:49 welcome.txt

    sushree@Sushree:~/Desktop$ cp hello.txt /home/sushree/Desktop/opensourcetutorial/

    sushree@Sushree:~/Desktop$ cd opensourcetutorial/
    sushree@Sushree:~/Desktop/opensourcetutorial$ ls
    hello.txt

    sushree@Sushree:~/Desktop$ ls -l
    total 14118048
    dr--rwxr-x 2 sushree sushree        4096 Feb 17 21:12 opensourcetutorial
    -rw-r--r-- 1 sushree sushree  3359521331 Jan 16 07:28 osgeolive-12.0-vm.7z
    -rw------- 1 sushree sushree 11097341952 Jan 21 22:35 osgeolive-12.0-vm.vmdk
    -rw-rw-r-- 1 sushree sushree          38 Feb 11 00:49 welcome.txt

    sushree@Sushree:~/Desktop$ cp /home/sushree/Desktop/opensourcetutorial/hello.txt /home/sushree/Desktop/
    cp: cannot stat ‘/home/sushree/Desktop/opensourcetutorial/hello.txt’: Permission denied


# rm
remove files or directories

SYNTAX : rm [OPTION]... FILE...

    sushree@Sushree:~/Desktop$ ls
    hello.txt           osgeolive-12.0-vm.7z    welcome.txt
    opensourcetutorial  osgeolive-12.0-vm.vmdk
    sushree@Sushree:~/Desktop$ rm hello.txt
    sushree@Sushree:~/Desktop$ ls
    opensourcetutorial  osgeolive-12.0-vm.7z  osgeolive-12.0-vm.vmdk  welcome.txt

# date
Display the current time in the given FORMAT, or set the system date.

SYNTAX : date [OPTION]... [+FORMAT]


    sushree@Sushree:~/Desktop$ date
    Sun Feb 24 11:35:17 IST 2019


Display date in a given format

The following are the format specifier

|Format Specifier |  Description|
|:---:|:---|
%D | Display date as mm/dd/yy.       
%d | Display the day of the month (01 to 31).       
%a | Displays the abbreviated name for weekdays (Sun to Sat).
%A | Displays full weekdays (Sunday to Saturday).
%h | Displays abbreviated month name (Jan to Dec).
%b | Displays abbreviated month name (Jan to Dec).
%B | Displays full month name(January to December).
%m | Displays the month of year (01 to 12).
%y | Displays last two digits of the year(00 to 99).
%Y | Display four-digit year.
%T | Display the time in 24 hour format as HH:MM:SS.
%H | Display the hour.
%M | Display the minute.
%S | Display the seconds.



Display **UTC**(Coordinated Universal Time ) time

    sushree@Sushree:~$ date -u
    Sat Mar 30 04:15:45 UTC 2019

Display the date specified in the **string** in date format

    sushree@Sushree:~$ date --date="09/20/2018"
    Thu Sep 20 00:00:00 IST 2018

Here the date specified is 20th September 2018 which has been displayedd in the date format.

Displaying **past date**

    sushree@Sushree:~$ date --date="1 year ago"
    Fri Mar 30 09:54:23 IST 2018

    sushree@Sushree:~$ date --date="5 secs ago"
    Sat Mar 30 09:54:49 IST 2019

    sushree@Sushree:~$ date --date="6 months ago"
    Sun Sep 30 09:55:49 IST 2018

Displaying **futre date**

    sushree@Sushree:~$ date --date="next monday"
    Mon Apr  1 00:00:00 IST 2019

    sushree@Sushree:~$ date --date="5 year"
    Sat Mar 30 09:57:39 IST 2024

    sushree@Sushree:~$ date --date="tomorrow"
    Sun Mar 31 09:58:30 IST 2019

**Set** the system date

    sushree@Sushree:~$ date --set="Tue Nov 13 15:23:34 UTC 2018"
    sushree@Sushree:~$ date
    Tue Nov 13 15:23:34 UTC 2018


#stat

Displays file status or inofrmation

    sushree@Sushree:~/Desktop/opensourcetutorial$ stat a.txt
    File: ‘a.txt’
    Size: 0         	Blocks: 0          IO Block: 4096   regular empty file
    Device: 809h/2057d	Inode: 2121285     Links: 1
    Access: (0664/-rw-rw-r--)  Uid: ( 1000/ sushree)   Gid: ( 1000/ sushree)
    Access: 2019-03-31 18:27:02.261105369 +0530
    Modify: 2019-03-31 18:27:02.261105369 +0530
    Change: 2019-03-31 18:27:02.261105369 +0530
    Birth: -

It includes information like the name of the file, size, number of blocks it is using, inode number, number of hard links, last modified time, last access time etc.

# touch

Touch command allows to create a blank file. In case if the file already exist it will change the access time of the file.

SYNTAX : touch [OPTION]... FILE...

To create an empty file

    sushree@Sushree:~/Desktop/opensourcetutorial$ ls
    hello.txt
    sushree@Sushree:~/Desktop/opensourcetutorial$ touch welcome.txt
    sushree@Sushree:~/Desktop/opensourcetutorial$ ls
    hello.txt  welcome.txt

To **create multiple files** at a time, specify space separated names of the files

    sushree@Sushree:~/Desktop/opensourcetutorial$ ls
    hello.txt  welcome.txt
    sushree@Sushree:~/Desktop/opensourcetutorial$ touch test.txt test1.txt test2.txtsushree@Sushree:~/Desktop/opensourcetutorial$ ls
    hello.txt  test1.txt  test2.txt  test.txt  welcome.txt

To create multiple files with a variety of **patterns**

    sushree@Sushree:~/Desktop/opensourcetutorial$ touch {a..c}.txt
    sushree@Sushree:~/Desktop/opensourcetutorial$ ls
    a.txt  b.txt  c.txt  hello.txt  test1.txt  test2.txt  test.txt  welcome.txt

To change the **access time**

    sushree@Sushree:~/Desktop/opensourcetutorial$ stat a.txt
    File: ‘a.txt’
    Size: 0         	Blocks: 0          IO Block: 4096   regular empty file
    Device: 809h/2057d	Inode: 2121285     Links: 1
    Access: (0664/-rw-rw-r--)  Uid: ( 1000/ sushree)   Gid: ( 1000/ sushree)
    Access: 2019-03-31 18:27:02.261105369 +0530
    Modify: 2019-03-31 18:27:02.261105369 +0530
    Change: 2019-03-31 18:27:02.261105369 +0530
    Birth: -

    sushree@Sushree:~/Desktop/opensourcetutorial$ touch -a a.txt

    sushree@Sushree:~/Desktop/opensourcetutorial$ stat a.txt
    File: ‘a.txt’
    Size: 0         	Blocks: 0          IO Block: 4096   regular empty file
    Device: 809h/2057d	Inode: 2121285     Links: 1
    Access: (0664/-rw-rw-r--)  Uid: ( 1000/ sushree)   Gid: ( 1000/ sushree)
    Access: 2019-03-31 18:33:50.857102355 +0530
    Modify: 2019-03-31 18:27:02.261105369 +0530
    Change: 2019-03-31 18:33:50.857102355 +0530
    Birth: -

**Note** : the access time changes from 18:27 to 18:33 whereas the modified time still remains the same.

To change the **last modified time**

    sushree@Sushree:~/Desktop/opensourcetutorial$ stat a.txt
    File: ‘a.txt’
    Size: 0         	Blocks: 0          IO Block: 4096   regular empty file
    Device: 809h/2057d	Inode: 2121285     Links: 1
    Access: (0664/-rw-rw-r--)  Uid: ( 1000/ sushree)   Gid: ( 1000/ sushree)
    Access: 2019-03-31 18:33:50.857102355 +0530
    Modify: 2019-03-31 18:27:02.261105369 +0530
    Change: 2019-03-31 18:33:50.857102355 +0530
    Birth: -

    sushree@Sushree:~/Desktop/opensourcetutorial$ touch -m a.txt

    sushree@Sushree:~/Desktop/opensourcetutorial$ stat a.txt
    File: ‘a.txt’
    Size: 0         	Blocks: 0          IO Block: 4096   regular empty file
    Device: 809h/2057d	Inode: 2121285     Links: 1
    Access: (0664/-rw-rw-r--)  Uid: ( 1000/ sushree)   Gid: ( 1000/ sushree)
    Access: 2019-03-31 18:33:50.857102355 +0530
    Modify: 2019-03-31 18:34:09.045102221 +0530
    Change: 2019-03-31 18:34:09.045102221 +0530
    Birth: -

**Note** : the modified time changes from 18:27 to 18:34

To change both the **access time** as well as the **modified time**

    sushree@Sushree:~/Desktop/opensourcetutorial$ stat a.txt
    File: ‘a.txt’
    Size: 0         	Blocks: 0          IO Block: 4096   regular empty file
    Device: 809h/2057d	Inode: 2121285     Links: 1
    Access: (0664/-rw-rw-r--)  Uid: ( 1000/ sushree)   Gid: ( 1000/ sushree)
    Access: 2019-03-31 18:33:50.857102355 +0530
    Modify: 2019-03-31 18:34:09.045102221 +0530
    Change: 2019-03-31 18:34:09.045102221 +0530
    Birth: -

    sushree@Sushree:~/Desktop/opensourcetutorial$ touch -am a.txt

    sushree@Sushree:~/Desktop/opensourcetutorial$ stat a.txt
    File: ‘a.txt’
    Size: 0         	Blocks: 0          IO Block: 4096   regular empty file
    Device: 809h/2057d	Inode: 2121285     Links: 1
    Access: (0664/-rw-rw-r--)  Uid: ( 1000/ sushree)   Gid: ( 1000/ sushree)
    Access: 2019-03-31 18:43:52.241097918 +0530
    Modify: 2019-03-31 18:43:52.241097918 +0530
    Change: 2019-03-31 18:43:52.241097918 +0530
    Birth: -
