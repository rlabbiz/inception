FROM debian:bookworm

RUN apt-get update -y \
    && apt-get install openssl -y \
    && apt-get install nginx -y

EXPOSE 80

CMD ["bash"]