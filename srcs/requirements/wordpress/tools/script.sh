#!/bin/bash

export db_name="wordpress"
export db_user="rlabbiz"
export db_pass="0000"


cd /var/www/html/
wp core download --allow-root

wp config create --dbname=$db_name --dbuser=$db_user --dbhost=mariadb:3306 --dbpass=$db_pass --skip-check --allow-root
# while ! wp db check --allow-root# do    
#     sleep 2
# done

exec "$@"