#!/usr/bin/bash

export db_name='wordpress'
export db_user='rlabbiz'
export db_pass='0000'

service mariadb start 

echo "create database if not exist $(db_name);" > sql 
echo "create user if not exist '$(db_user)'@localhost indentified by '$(db_pass)';" >> sql
echo "grant all privileges on '$(db_name)'.* to '$(db_user)@localhost';" >> sql

mysql < sql 

rm sql

bash