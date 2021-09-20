service mysql start

sed -i "s|R_DB_NAME|$DB_NAME|g" ./create_db.sql
sed -i "s|R_DB_USER|$DB_USER|g" /create_db.sql
sed -i "s|R_DB_PASSWORD|$DB_PASSWORD|g" ./create_db.sql
sed -i "s|R_DB_ROOT_PASSWORD|$DB_ROOT_PASS|g" ./create_db.sql

mysql -u root < ./create_db.sql
service mysql stop

/usr/bin/mysqld_safe
