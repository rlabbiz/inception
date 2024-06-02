#!/usr/bin/bash

service mariadb start 

echo "create database wordpress_db;" > sql 

mysql < sql 

bash