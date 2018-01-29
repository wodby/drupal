-include /usr/local/bin/drupal-php.mk

.PHONY: init

init:
	# DRUPAL_ROOT defined in included drupal-php.mk
	DRUPAL_ROOT=$(DRUPAL_ROOT) sudo -E init.sh
