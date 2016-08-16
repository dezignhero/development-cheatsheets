#MySQL

Wordpress use cases - [Hosting Wordpress](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hosting-wordpress.html)

###Start Service
```sudo service mysqld start```

###Create User
```mysql -u root -p```
```create user '<username>'@'localhost' identified by '<password>';```

###Create Database
```create database '<database>';```

###Select Database
```use <database>```

###Update Value in Table
```update wp_options set option_value = '<replacement url>' where option_value like "<url starting with>%";

###Replace Fields
```update wp_posts set post_content = REPLACE(post_content, 'href=\"<relative path>', '<absolute path>');```

###Format select query results based on option_value
```select case when option_value like '<url starting with>%' then '<replacement url>' else option_value end option_value from wp_options where option_value like "http://%";```