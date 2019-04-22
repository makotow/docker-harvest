# bumpup version here.

VERSION            := 1.0
BASE_IMAGE         := ubuntu:16.04
HARVEST_VERSION    := 1.4.2
NMSDK_VERSION	   := 9.5
USER               := makotow

# container image name and repository information
IMAGE_NAME         := harvest-docker
TAG                := $(VERSION)-harvest$(HARVEST_VERSION)
REGISTRY           := $(USER)/$(IMAGE_NAME)

## Shortcuts
bi: build-harvest-image
pi: push-image

## docker image build & push
.PHONY: build-harvest-image
build-harvest-image:
	docker build \
	--build-arg VERSION=$(VERSION) \
	--build-arg BASE_IMAGE=$(BASE_IMAGE) \
	--build-arg IMAGE_NAME=$(IMAGE_NAME) \
	--build-arg HARVEST_VERSION=$(HARVEST_VERSION) \
	--build-arg NMSDK_VERSION=$(NMSDK_VERSION) \
	-t $(REGISTRY):$(TAG) -f ./harvest/Dockerfile ./harvest

.PHONY: push-image
push-image:
	docker push \
	$(REGISTRY):$(TAG) 

## for harvest operation
.PHONY: up
up:
	docker run \
	-d \
	-v $PWD/netapp-harvest.conf:/opt/netapp-harvest/netapp-harvest.conf \
	$(REGISTRY):$(TAG) \
	netapp-harvest

.PHONY: compose-up
compose-up:
	docker-compose up -d
