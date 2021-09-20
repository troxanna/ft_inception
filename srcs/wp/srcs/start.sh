#!/bin/bash

cd /var/www/wp_site
wp core download --allow-root

sed -i 's/;daemonize = yes/daemonize = no/g' /etc/php/7.3/fpm/pool.d/www.conf
echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf

sed -i "s|R_DB_NAME|'$DB_NAME'|g" /var/www/wp_site/wp-config.php
sed -i "s|R_DB_USER|'$DB_USER'|g" /var/www/wp_site/wp-config.php
sed -i "s|R_DB_PASSWORD|'$DB_PASSWORD'|g" /var/www/wp_site/wp-config.php
sed -i "s|R_DB_HOST|'$DB_HOST'|g" /var/www/wp_site/wp-config.php

wp core install --allow-root --url=$WP_URL --title=$WP_TITLE --admin_user=$WP_ADMIN_NICK \
                                --admin_password=$WP_ADMIN_PASS --admin_email=$WP_ADMIN_MAIL
wp user create --allow-root $WP_USR_NICK $WP_USR_MAIL --user_pass=$WP_USR_PASS

/usr/sbin/$(ls /usr/sbin | grep php | grep fpm) --nodaemonize
