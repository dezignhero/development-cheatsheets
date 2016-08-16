#Linux Useful Commands

###Running Services

```sudo service --status-all```
```sudo service start/stop/reload/restart```

###Check Memory Usage

[http://www.binarytides.com/linux-command-check-memory-usage/](http://www.binarytides.com/linux-command-check-memory-usage/)

```
free
cat /proc/meminfo
vmstat -s
top
```

###Kill All Related Processes

```killall -KILL php-fpm``` or ```killall -9 php-fpm```

###Report Snapshot of Service
```
ps xav | grep httpd
ps -ef | grep mysql
```

###Report Server Uptime

```uptime```

##Permissions

###Grant ownership of directory to either username or group

```
sudo chown -R <username>:<group> /var/www/html
sudo chown -R apache:www /var/www/html (this is default so pages can be served)
sudo chown -R apache:apache /var/www/html (this is so wordpress can install)
```

###Add username to group
```sudo usermod -a -G <group> <username>```

###Show Groups Belong to
```groups <username>```

###Groups on System
```cat /etc/group |cut -d: -f1```

###Members of Groupname
```grep '<group>' /etc/group```

###Remove member from group
```gpasswd -d <username> <group>```

###Change Permissions to 777
```sudo chmod 777 <file>```

###Make sure .pem file is chmod 400 (otherwise can’t ssh in)
```chmod 400 <filename>.pem```

###Generic

```chmod``` - modify file access rights
```su``` - temporarily become the superuser
```chown``` - change file ownership
```chgrp``` - change a file's group owner

###This allows FileZilla or any other program logged in as ec2-user the ability to change files and folders in the html folder only. 
```sudo chmod -R 775 /var/www/html```

###History

Show prior commands entered in console.

```history 100``` - Show prior 100 commands entered

##Compression

###Untar a file
```sudo tar -xzvf filename.tar.gz```

###Unzip gz file
```gzip -d filename.gz```

###Unzip a file to directory
```unzip file.zip -d /<directory>```

##Directory

###Copy all files to another directory
```cp -r /source/* /destination/*```

###Filename Manipulation

Detects common pattern (in this case "-default") from all filenames and confirms intended action.

```
find . -type f -name "*-default*" \
-exec sh -c 'echo mv "$0" "${0/-default/}"' '{}' \;
```

Remove the "echo" when you're sure and want to truly write.
