#!/usr/bin/bash

export db_name='wordpress'
export db_user='rlabbiz'
export db_pass='0000'

mkdir -p /run/mysqld/ && chown -R mysql:mysql /run/mysqld/
mkdir -p /var/lib/mysql/ && chown -R mysql:mysql /var/lib/mysql/

export DB_ROOT='root'
export DB_NAME=${db_name}
export DB_USER=${db_user}
export DB_PASS=${db_pass}

# mysql_install_db --basedir=/usr --datadir=/var/lib/mysql --user=mysql --rpm

cat << EOF > /tmp/create_db.sql
CREATE DATABASE ${DB_NAME} CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER '${DB_USER}'@'%' IDENTIFIED by '${DB_PASS}';
GRANT ALL PRIVILEGES ON wordpress.* TO '${DB_USER}'@'%';
FLUSH PRIVILEGES;
EOF
# run init.sql

mysqld --user=mysql --bootstrap  < /tmp/create_db.sql
rm -f /tmp/create_db.sql

# kill $(cat /var/run/mysqld/mysqld.pid)

mysqld -u root