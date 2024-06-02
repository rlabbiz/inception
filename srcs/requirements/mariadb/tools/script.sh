#!/usr/bin/bash

export db_name='wordpress'
export db_user='root'
export db_pass='0000'

service mariadb start 

echo "create database if not exist $(db_name);" > sql 
echo "create user if not exist '$(db_user)'@localhost indentified by '$(db_pass)'" >> sql

mysql < sql 

rm sql

bash