FROM debian:bookworm

RUN apt-get update && apt-get upgrade \
    && apt-get install php-fpm -y \
    && apt-get install wget -y

# move to script
# RUN
#     && wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    # && apt-get remove wget -y \
#     && mv wp-cli.phar /usr/local/bin/wp \
#     && chmod +x /usr/local/bin/wp



COPY tools/script.sh .

CMD ["./script.sh"]