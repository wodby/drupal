-include /usr/local/bin/drupal-php.mk

.PHONY: init

init:
	DRUPAL_ROOT=$(DRUPAL_ROOT) init.sh
