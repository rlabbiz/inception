FROM debian:bookworm

RUN apt-get update && apt-get install mariadb-server -y && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /run/mysqld/ && chown -R mysql:mysql /run/mysqld/
RUN mkdir -p /var/lib/mysql/ && chown -R mysql:mysql /var/lib/mysql/

COPY tools/script.sh .

RUN chmod +x script.sh

EXPOSE 3306

CMD ["./script.sh"]