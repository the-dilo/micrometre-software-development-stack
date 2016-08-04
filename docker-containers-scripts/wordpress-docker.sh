#!/bin/sh
docker run --name wordpressdb --restart=always -e MYSQL_ROOT_PASSWORD=0okmnbhu8 -e MYSQL_DATABASE=wordpress -d mysql
docker run -e WORDPRESS_DB_PASSWORD=0okmnbhu8 -d --name wordpress --link wordpressdb:mysql  --restart=always -p 80:80 wordpress
#plugins to improve site security
#Antispam Bee
#Rename wp-login.php
#Wordfence Security
#WP Author Slug
