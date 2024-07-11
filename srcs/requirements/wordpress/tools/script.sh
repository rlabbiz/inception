#!/bin/bash

export db_name="wordpress"
export db_user="rlabbiz"
export db_pass="0000"


cd /var/www/html/
wp core download --allow-root

wp config create --dbname=$db_name --dbuser=$db_user --dbhost=mariadb:3306 --dbpass=$db_pass --skip-check --allow-root

wp core install --allow-root --url=rlabbiz.42.fr --title=rlabbiz --admin_user=rlabbiz --admin_password=0000 --admin_email=redalabbiz@gmail.com

# wp user create	--allow-root $WP_USER $USER_EMAIL --role=author --user_pass=$WP_PASS

exec "$@"