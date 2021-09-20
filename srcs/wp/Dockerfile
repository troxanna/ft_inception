FROM	debian:buster

RUN		apt-get update && apt-get upgrade -y 
RUN		apt-get install -y wget php php7.3-fpm php-mbstring php-mysql

RUN		wget -P /usr/local/bin https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN		chmod -R 777 /usr/local/bin/wp-cli.phar
RUN		mv /usr/local/bin/wp-cli.phar /usr/local/bin/wp 

RUN		mkdir -p /var/www/wp_site
RUN		mkdir -p /run/php

COPY	./srcs/wp-config.php /var/www/wp_site/wp-config.php
RUN		chmod g+w /var/www/wp_site/wp-config.php

COPY	./srcs/start.sh .

EXPOSE	9000

CMD		bash start.sh
