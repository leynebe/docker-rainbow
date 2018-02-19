FROM docker.io/php:7.0-apache
# Ports
EXPOSE 8080
RUN echo "Listen 8080" > /etc/apache2/ports.conf 
# Permissions
RUN chown -R 33:0 /var/ && \
    chmod -R g=u /var/
ENV APACHE_RUN_GROUP=root
# User
USER 33
# Environment vars
ARG CONTAINERVERSION=rainbow
ENV CONTAINERVERSION=$CONTAINERVERSION
# Site contents
COPY . /var/www/html/
