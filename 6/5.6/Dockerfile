FROM wodby/drupal-php:5.6

RUN mkdir /usr/src/drupal && \
    chown -R www-data:www-data /var/www/html/ /usr/src/drupal

COPY make.yml /usr/src/drupal
COPY init /docker-entrypoint-init.d/

RUN cd /usr/src/drupal && su-exec www-data drush make make.yml -y