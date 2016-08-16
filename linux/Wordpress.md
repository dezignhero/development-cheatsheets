# EC2 Wordpress Setup

Also see ```Linux Commands.md``` for complete list.

[http://blog.david-jensen.com/wordpress-amazon-ec2-apache-permissions-wordpress/](http://blog.david-jensen.com/wordpress-amazon-ec2-apache-permissions-wordpress/)
[https://gist.github.com/philihp/2befe79839d7f59ac0ea](https://gist.github.com/philihp/2befe79839d7f59ac0ea)

---

##Permissions

###Grant ownership of directory to either username or group

```
sudo chown -R <username>:<group> /var/www/html
sudo chown -R apache:www /var/www/html (this is default so pages can be served)
sudo chown -R apache:apache /var/www/html (this is so wordpress can install)
```

Replace apache:www with nginx:www when using Nginx.

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

###External Clients

```sudo chmod -R 775 /var/www/html``` - Allows FileZilla or any other program logged in as ec2-user the ability to change files and folders in the html folder only. 


---

##Compression

###Untar a file
```sudo tar -xzvf filename.tar.gz```

###Unzip gz file
```gzip -d filename.gz```

###Unzip a file to directory
```unzip file.zip -d /<directory>```
