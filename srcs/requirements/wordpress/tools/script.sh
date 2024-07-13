#!/bin/bash

cd /var/www/html/

wp core download --allow-root

wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbhost=mariadb:3306 --dbpass=$DB_PASS --skip-check --allow-root

wp core install --allow-root --url=$WP_URL --title=$WP_TITLE --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PASS --admin_email=$WP_ADMIN_EMAIL

wp user create	--allow-root $WP_USER $WP_USER_EMAIL --role=author --user_pass=$WP_USER_PASS

exec "$@"