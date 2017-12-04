-include env_make

DRUPAL_VER = 6
PHP_VER ?= 5.6

FROM_TAG = $(PHP_VER)
REPO = wodby/drupal
NAME = drupal-$(DRUPAL_VER)-$(PHP_VER)

ifeq ($(TAG),)
    ifeq ($(PHP_DEV),)
        TAG ?= $(DRUPAL_VER)-$(PHP_VER)
    else
        TAG := $(DRUPAL_VER)-$(PHP_VER)-dev
    endif
endif

ifneq ($(PHP_DEV),)
    NAME := $(NAME)-dev
    FROM_TAG := $(FROM_TAG)-dev
endif

ifneq ($(FROM_STABILITY_TAG),)
    FROM_TAG := $(FROM_TAG)-$(FROM_STABILITY_TAG)
endif

ifneq ($(STABILITY_TAG),)
    ifneq ($(TAG),latest)
        override TAG := $(TAG)-$(STABILITY_TAG)
    endif
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
