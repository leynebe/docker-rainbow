FROM leynebe/openshift-webserver:latest

# Set apache user permissions
RUN chown -R 100:0 /app/ && \
    chmod -R g=u /app/

# Be Apache user
USER 100

# Set environment vars
ARG CONTAINERVERSION=rainbow
ENV CONTAINERVERSION=$CONTAINERVERSION

# Copy over site files
COPY . /app/
