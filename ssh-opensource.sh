
#!/bin/sh
# This script does rsync with the opensourcetutorials.in server 


rsync -a -v /home/tayyabali/Websites/opensourcetutorials.in/public/  root@142.93.223.127:/var/www/opensourcetutorials.in/public_html

