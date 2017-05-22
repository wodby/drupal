FROM wodby/drupal-php:5.3-2.3.0

COPY make.yml /usr/src/drupal/

RUN mv /usr/local/bin/actions.mk /usr/local/bin/drupal-php.mk && \
    cd /usr/src/drupal && \
    chown www-data:www-data /usr/src/drupal && \
    su-exec www-data drush make make.yml -y && \
    su-exec www-data drush @none dl registry_rebuild-7.x && \
    rm make.yml

COPY init /docker-entrypoint-init.d/

COPY actions /usr/local/bin/