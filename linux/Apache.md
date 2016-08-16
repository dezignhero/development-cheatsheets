#APACHE / HTTPD

```/etc/httpd/conf/httpd.conf ``` (edit this to enable Wordpress page urls to work)

Change AllowOverride None to All under <Directory “/var/www/html”>

This allows the .htaccess file to override default ```httpd.conf ``` settings

---

##Errors

###Check Error Logs

```tail -f /var/log/httpd/error_log```