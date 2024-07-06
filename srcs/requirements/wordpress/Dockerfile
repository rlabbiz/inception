FROM debian:bookworm

RUN apt update \
    && apt install wget -y \
    && apt install php-fpm -y \
    && apt install php-mysql -y 

COPY tools/script.sh .

RUN chmod +x script.sh

CMD ["./script.sh"]