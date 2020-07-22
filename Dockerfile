FROM leynebe/openshift-webserver:latest

# Set environment vars
ENV APPLICATION_NAME=rainbow

# Copy over site files
COPY . /app/
