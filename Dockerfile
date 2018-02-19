FROM docker.io/php:7.0-apache

RUN echo "Listen 8080" > /etc/apache2/ports.conf && \
    chgrp -R 0 /var/run/apache2 && \
    chmod -R g=u /var/run/apache2

EXPOSE 8080

COPY . /var/www/html/

ARG CONTAINERVERSION=rainbow
ENV CONTAINERVERSION=$CONTAINERVERSION
