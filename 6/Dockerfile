ARG BASE_IMAGE_TAG

FROM wodby/drupal-php:${BASE_IMAGE_TAG}

COPY make.yml /usr/src/drupal/

ENV DRUSH_VER="7.4.0"

USER root

RUN set -ex; \
    \
    mv /usr/local/bin/actions.mk /usr/local/bin/drupal-php.mk; \
    cd /usr/src/drupal; \
    chown www-data:www-data /usr/src/drupal; \
    \
    # Ensure drush version is compatible with Drupal 6 (PHP 5.6 case).
    su-exec www-data composer global remove drush/drush; \
    su-exec www-data composer global require drush/drush:"${DRUSH_VER}"; \
    \
    su-exec www-data drush make make.yml -y; \
    \
    echo "$(cat /etc/sudoers.d/www-data), /usr/local/bin/init.sh" > /etc/sudoers.d/www-data; \
    \
    rm make.yml

USER www-data

COPY init /docker-entrypoint-init.d/
COPY actions /usr/local/bin/