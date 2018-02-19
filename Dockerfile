FROM docker.io/php:7.0-apache
# Ports
EXPOSE 8080
RUN echo "Listen 8080" > /etc/apache2/ports.conf 
# Permissions
RUN chgrp -R 33 /var/ && \
    chmod -R g=u /var/
# User
USER 33
# Environment vars
ARG CONTAINERVERSION=rainbow
ENV CONTAINERVERSION=$CONTAINERVERSION
# Site contents
COPY . /var/www/html/
