#!/bin/bash

export DB_NAME='wordpress'
export DB_USER='rlabbiz'
export DB_PASS='0000'

echo "\
FLUSH PRIVILEGES;
CREATE DATABASE IF NOT EXISTS ${DB_NAME} ;
CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';
FLUSH PRIVILEGES;" > /sql.txt

mariadbd --user=mysql --bootstrap < /sql.txt

exec "$@"