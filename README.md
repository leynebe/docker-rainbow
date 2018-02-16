# Description

Create colorful self-identifying containerized PHP websites.
Created as an app for an Openshift Origin workshop.

# Build & Run

* `git clone http://github.com/leynebe/docker-rainbow`
* `docker build --build-arg CONTAINERVERSION=rainbow  -t rainbow:latest .` 

```

for i in {1..3}; do
	docker run -dp 8$i:8080 rainbow:latest;
	echo "Container exposed on port 8$i.";
done

```

# Pull & Run

```

for i in {1..3}; do
        docker run -dp 8$i:8080 leynebe/rainbow:latest;
        echo "Container exposed on port 8$i.";
done

```
