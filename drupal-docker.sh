#with sqllite
docker run --name drupal --restart=always -p 8090:80 -d drupal
#wth mysql
docker run --name drupaldb --restart=always -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=drupal -d mysql
docker run -e DRUPAL_DB_PASSWORD=password -d --name drupal --link drupaldb:mysql --restart=always -p 8090:80 drupal