#NGINX

##Directories & Files

Main files used when running.  If it has .default it means it's the included sample implementation.

```/etc/nginx/nginx.conf``` - Main config
```/etc/nginx/fastcgi.conf``` - Parameter declarations
```/etc/nginx/conf.d/virtual.conf``` - Config per host
```/var/log/nginx/error_log``` - Error logs

```/etc/php-fpm.d/www.conf``` - PHP matching config

---

##Nginx.conf

Note: ```fastcgi_pass	127.0.0.1:9000``` works much better than using ```/var/run/php-fpm/php-fpm.sock```.  Must be matched by ```www.conf ``` setting for ```listen = 127.0.0.1:9000```

```
server {
	listen			80 default_server;
	listen			[::]:80 default_server;
	# listen [::]:80 default_server ipv6only=on;
	# server_name	localhost;
	server_name		<site url>;
	root 			/var/www/html;

	location / {
		try_files	$uri $uri/ /index.php?$query_string;
	}

	location ~ \.php$ {
		try_files		$uri =404;
		fastcgi_pass	127.0.0.1:9000;
		fastcgi_index	index.php;
		fastcgi_split_path_info ^(.+\.php)(/.+)$;
		fastcgi_param	SCRIPT_FILENAME $document_root$fastcgi_script_name;
		include			fastcgi_params;
	}
}
```

---

##PHP-FPM www.conf

To match Nginx settings, must use the following.

```
listen.owner = nginx
listen.group = nginx
listen.mode = 0664
user = nginx
group = nginx
listen = 127.0.0.1:9000
```

Don't forget to ```/etc/init.d/php-fpm restart``` and ```/etc/init.d/nginx restart``` or ```service nginx restart```

---

###Permissions

Grant ownership of directory to either username or group to run Wordpress

```
sudo chown -R <username>:<group> /var/www/html
sudo chown -R nginx:www /var/www/html (this is default so pages can be served)
sudo chown -R nginx:nginx /var/www/html (this is so wordpress can install)
```

###Solves Session writing bug reported by New Relic
```sudo chown -R root:nginx /var/lib/php/session```

###Check Error Logs

```tail -f /var/log/nginx/error_log```

###Migrating From Apache

[https://www.digitalocean.com/community/tutorials/how-to-migrate-from-an-apache-web-server-to-nginx-on-an-ubuntu-vps](https://www.digitalocean.com/community/tutorials/how-to-migrate-from-an-apache-web-server-to-nginx-on-an-ubuntu-vps)

###Host Multiple Sites

[https://www.digitalocean.com/community/tutorials/how-to-host-multiple-websites-securely-with-nginx-and-php-fpm-on-ubuntu-14-04](https://www.digitalocean.com/community/tutorials/how-to-host-multiple-websites-securely-with-nginx-and-php-fpm-on-ubuntu-14-04)

---

##Troubleshooting

###Connect to PHP-FPM Sock Failed

[http://www.queryadmin.com/921/connect-unix-var-run-php5-fpm-sock-failed/](http://www.queryadmin.com/921/connect-unix-var-run-php5-fpm-sock-failed/)