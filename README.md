# Description

A simple webserver image with a php webpage that changes color depending on the hostname.
Useful when you want to deploy multiple applications for testing containerized infrastructure.
Originally created as an app for an Openshift Origin workshop.

# Build & Run

* `git clone http://github.com/leynebe/docker-rainbow`
* `docker build -t rainbow:latest .`
* `docker run -p 8080:8080 rainbow:latest`

# Pull & Run

I recommend checking out the code and building it yourself but the image is available on the Docker Hub at `leynebe/rainbow:latest`. 
Beware that it may be updated or changed at any time as I see fit.

# Run multiple quickly using bash

```
for i in {1..3}; do
	docker run -dp 8$i:8080 rainbow:latest;
	echo "Container exposed on port 8$i.";
done
```

# TODO

* Add optional env var that decides color
* Add images to readme
* Add github cicd
* Find out why the container does not stop peacefully
