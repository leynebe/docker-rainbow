FROM leynebe/openshift-webserver:latest
# Ports
#EXPOSE 8080
#RUN echo "Listen 8080" > /etc/apache2/ports.conf 
# Permissions
RUN chown -R 33:0 /app/ && \
    chmod -R g=u /app/
ENV APACHE_RUN_GROUP=root
# User
USER 33
# Environment vars
ARG CONTAINERVERSION=rainbow
ENV CONTAINERVERSION=$CONTAINERVERSION
# Site contents
COPY . /app/
#CMD /usr/sbin/apache2ctl -D FOREGROUND
