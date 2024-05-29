FROM debian:bookworm

RUN apt-get update -y \
    && apt-get install openssl -y \
    && apt-get install nginx -y \
    && openssl req \
        -x509 \
        -nodes \
        -days 365 \
        -newkey rsa:2048 \
        -keyout /etc/ssl/private/nginx.key \
        -out /etc/ssl/certs/nginx.crt \
        -subj "/C=MO/L=TE/O=1337/OU=student/CN=rlabbiz.42.fr"

COPY conf/nginx.conf /etc/nginx/sites-available/default

EXPOSE 80

CMD ["bash"]