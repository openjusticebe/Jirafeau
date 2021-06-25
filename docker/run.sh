#!/bin/sh -e
/cleanup.sh &
# php-fpm -D
mkdir /run/php
php-fpm7.3 -D 
php /docker_config.php
lighttpd -D -f /etc/lighttpd/lighttpd.conf
