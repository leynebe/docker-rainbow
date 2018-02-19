FROM leynebe/openshift-webserver:latest

# Set environment vars
ARG CONTAINERVERSION=rainbow
ENV CONTAINERVERSION=$CONTAINERVERSION

# Copy over site files
COPY . /app/
