FROM docker.io/php:7.0-apache

RUN echo "Listen 8080" > /etc/apache2/ports.conf && \
    chgrp -R 0 /some/directory && \
    chmod -R g=u /some/directory

EXPOSE 8080

COPY index.php /var/www/html/index.php
COPY style.php /var/www/html/style.php

ARG CONTAINERVERSION=rainbow
ENV CONTAINERVERSION=$CONTAINERVERSION
