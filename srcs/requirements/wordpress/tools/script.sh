#!/bin/bash

export db_name="wordpress"
export db_user="rlabbiz"
export db_pass="0000"


cd /var/www/html/
wp core download --allow-root

wp config create --dbname=$db_name --dbuser=$db_user --dbhost=mariadb --dbpass=$db_pass --skip-check --allow-root
# wait for db
while ! wp db check --allow-root
do    
    sleep 2
done

# wp core install --url=https://mtaib.42.fr --title=$TITLE --admin_user=$ADMIN --admin_password=$ADMIN_PASS --admin_email=$ADMIN_EMAIL --allow-root
# wp user create $WP_USER $WP_USER_EMAIL --role=$ROLE --user_pass=$WP_PASS --allow-root
exec "$@"