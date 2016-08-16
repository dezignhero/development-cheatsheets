#PHP-FPM

##Running Service
```sudo service php-fpm restart```

---

##Directories & Files

Main files used when running.  If it has .default it means it's the included sample implementation.

```/etc/php-fpm.d/www.conf``` - Main config
```/etc/nginx/nginx.conf``` - Nginx matching config

---

##Www.conf Config

To match Nginx settings, must use the following.

```
listen.owner = nginx
listen.group = nginx
listen.mode = 0664
user = nginx
group = nginx
listen = 127.0.0.1:9000
```