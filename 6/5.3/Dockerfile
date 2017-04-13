FROM wodby/drupal-php:5.3

COPY make.yml /usr/src/drupal/

RUN cd /usr/src/drupal && \
    chown www-data:www-data /usr/src/drupal && \
    su-exec www-data drush make make.yml -y && \
    rm make.yml

COPY init /docker-entrypoint-init.d/