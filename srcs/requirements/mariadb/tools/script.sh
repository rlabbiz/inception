#!/usr/bin/bash

export db_name="wordpress"
export db_user='rlabbiz'
export db_pass='0000'

service mariadb start 

echo "CREATE DATABASE IF NOT EXISTS $$db_name;" > sql 
echo "CREATE USER IF NOT EXISTS $db_user@'localhost' IDENTIFIED BY '$db_pass';" >> sql
echo "GRANT ALL PRIVILEGES ON $db_name.* TO $db_user@'localhost';" >> sql
echo "FLUSH PRIVILEGES;" >> sql


mysql < sql 

rm sql

# bash