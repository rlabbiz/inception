FROM debian:bookworm

RUN apt-get update && apt-get install mariadb-server -y && rm -rf /var/lib/apt/lists/*

COPY tools/script.sh .

RUN chmod +x script.sh

EXPOSE 3306

CMD ["./script.sh"]