-include /usr/local/bin/drupal-php.mk

.PHONY: check-ready

max_try ?= 1
wait_seconds ?= 1

check-ready:
	wait-for-drupal-copy.sh $(max_try) $(wait_seconds)
