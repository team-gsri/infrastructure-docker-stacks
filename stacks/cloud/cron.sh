#!/bin/sh

SERVICE=cloud_nextcloud
TASK=`docker service ps --filter "desired-state=running" --quiet $SERVICE`
CONTAINER=$SERVICE.1.$TASK

docker exec --user www-data $CONTAINER /usr/local/bin/php /var/www/html/cron.php
