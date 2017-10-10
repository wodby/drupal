-include env_make

DRUPAL = 6

PHP_VER ?= 5.6
TAG ?= $(DRUPAL)-$(PHP_VER)
PHP_DEBUG ?= 0

REPO = wodby/drupal
NAME = drupal-$(DRUPAL)-$(PHP_VER)
FROM_TAG = $(PHP_VER)

ifneq ($(FROM_STABILITY_TAG),)
    FROM_TAG := $(FROM_TAG)-$(FROM_STABILITY_TAG)
endif

ifeq ($(PHP_DEBUG), 1)
    override TAG := $(TAG)-debug
    FROM_TAG := $(FROM_TAG)-debug
    NAME := $(NAME)-debug
endif

.PHONY: build test push shell run start stop logs clean release

default: build

build:
	docker build -t $(REPO):$(TAG) --build-arg FROM_TAG=$(FROM_TAG) ./

test:
	IMAGE=$(REPO):$(TAG) ./test.sh

push:
	docker push $(REPO):$(TAG)

shell:
	docker run --rm --name $(NAME) -i -t $(PORTS) $(VOLUMES) $(ENV) $(REPO):$(TAG) /bin/bash

run:
	docker run --rm --name $(NAME) $(PORTS) $(VOLUMES) $(ENV) $(REPO):$(TAG) $(CMD)

start:
	docker run -d --name $(NAME) $(PORTS) $(VOLUMES) $(ENV) $(REPO):$(TAG)

stop:
	docker stop $(NAME)

logs:
	docker logs $(NAME)

clean:
	-docker rm -f $(NAME)

release: build push
