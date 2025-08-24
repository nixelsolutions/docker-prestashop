ARG BASE_IMAGE=unsimplesistemista/docker-php-fpm:latest
FROM $BASE_IMAGE

ARG user=www-data

ENV CACHE_ENABLED=0 \
    CACHE_200_MINUTES=1

ADD ./rootfs /
RUN chmod +x /usr/local/bin/preseed/*.sh
