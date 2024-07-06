#!/usr/bin/bash

export db_name=wordpress
export db_user=rlabbiz
export db_pass=0000

mkdir -p /wordpress
chown -R www-data:www-data /wordpress
chmod -R 755 /wordpress

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar 
mv wp-cli.phar /usr/local/bin/wp

wp core download --path=wordpress --allow-root

wp config create --dbname=$db_name --dbuser=$db_user --dbpass=$db_pass --path=/wordpress --skip-check --allow-root 

bash