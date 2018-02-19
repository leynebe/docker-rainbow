FROM leynebe/openshift-webserver:latest

# Permissions
RUN chown -R 100:0 /app/ && \
    chmod -R g=u /app/

# Be Apache user
USER 100

# Environment vars
ARG CONTAINERVERSION=rainbow
ENV CONTAINERVERSION=$CONTAINERVERSION

# Site contents
COPY . /app/
