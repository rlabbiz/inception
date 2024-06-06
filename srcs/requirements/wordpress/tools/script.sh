#!/usr/bin/bash

wp core download --path=wordpress --allow-root


wp config create --dbname=nginx --dbuser=rlabbiz --dbpass=0000 --path=/wordpress --skip-check --allow-root 


bash