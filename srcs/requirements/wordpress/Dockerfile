FROM debian:bookworm

RUN apt update \
    && apt install wget -y \
    && apt install php-fpm -y \
    && wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && apt remove wget -y \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

COPY tools/script.sh .

RUN chmod +x script.sh

CMD ["./script.sh"]