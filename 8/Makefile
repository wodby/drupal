-include env_make

DRUPAL_VER = 8.5.1
DRUPAL_VER_MAJOR ?= $(shell echo "${DRUPAL_VER}" | grep -oE '^[0-9]+')

PHP_VER ?= 7.1
BASE_IMAGE_TAG = $(PHP_VER)

REPO = wodby/drupal
NAME = drupal-$(DRUPAL_VER_MAJOR)-$(PHP_VER)

TAG ?= $(DRUPAL_VER_MAJOR)-$(PHP_VER)

ifneq ($(BASE_IMAGE_STABILITY_TAG),)
    BASE_IMAGE_TAG := $(BASE_IMAGE_TAG)-$(BASE_IMAGE_STABILITY_TAG)
endif

ifneq ($(STABILITY_TAG),)
    ifneq ($(TAG),latest)
        override TAG := $(TAG)-$(STABILITY_TAG)
    endif
endif

.PHONY: build test push shell run start stop logs clean release

default: build

build:
	docker build -t $(REPO):$(TAG) \
		--build-arg BASE_IMAGE_TAG=$(BASE_IMAGE_TAG) \
		--build-arg DRUPAL_VER=$(DRUPAL_VER) \
		./

test:
	IMAGE=$(REPO):$(TAG) ./test

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

compare-orig-configs:
	./compare_orig_configs $(DRUPAL_VER)

release: build push
