#!/usr/bin/bash

export db_name=wordpress
export db_user=rlabbiz
export db_pass=0000

wp core download --path=wordpress --allow-root

wp config create --dbname=$db_name --dbuser=$db_user --dbpass=$db_pass --path=/wordpress --skip-check --allow-root 

bash