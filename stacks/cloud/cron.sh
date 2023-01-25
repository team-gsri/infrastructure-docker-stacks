#!/bin/sh

SERVICE=cloud_nextcloud
TASK=`docker service ps $SERVICE -q`
CONTAINER=$SERVICE.1.$TASK

docker exec --user www-data $CONTAINER /usr/local/bin/php /var/www/html/cron.php
