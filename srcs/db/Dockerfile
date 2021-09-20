FROM	debian:buster

RUN		apt-get update && apt-get upgrade -y 
RUN		apt-get install -y mariadb-server php-mysql 

RUN		mkdir -p /var/run/mysqld/
RUN		chmod -R 744 /var/run/mysqld/
RUN		chown -R mysql /var/run/mysqld
RUN		chmod -R 744 /var/lib/
RUN		chown -R mysql /var/lib

COPY	./srcs/create_db.sql .
COPY	./srcs/my.cnf /etc/mysql/
COPY	./srcs/start.sh .

EXPOSE		3306

CMD	bash start.sh
