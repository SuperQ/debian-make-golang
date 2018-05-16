# Make a Docker image for Debian Go devel.

DOCKER_IMAGE_NAME ?= debian-make-golang
DOCKER_IMAGE_TAG  ?= $(subst /,-,$(shell git rev-parse --abbrev-ref HEAD))

docker:
	docker build -t "$(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_TAG)" .

run:
	docker run -it "$(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_TAG)" /bin/bash
