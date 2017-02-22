#!/usr/bin/env bash

set -ex

make start

docker exec --user=82 $NAME drush -r /var/www/html/web status | grep 'Drupal version *: *7\.'
make clean