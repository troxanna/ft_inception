CREATE DATABASE IF NOT EXISTS R_DB_NAME;
GRANT ALL ON *.* TO 'R_DB_USER' IDENTIFIED BY 'R_DB_PASSWORD' WITH GRANT OPTION;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'R_DB_ROOT_PASSWORD';
FLUSH PRIVILEGES;