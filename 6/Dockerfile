ARG BASE_IMAGE_TAG

FROM wodby/drupal-php:${BASE_IMAGE_TAG}

COPY make.yml /usr/src/drupal/

ENV DRUSH_VER="7.4.0"

USER root

RUN set -ex; \
    \
    mv /usr/local/bin/actions.mk /usr/local/bin/drupal-php.mk; \
    cd /usr/src/drupal; \
    chown wodby:wodby /usr/src/drupal; \
    \
    # Ensure drush version is compatible with Drupal 6 (PHP 5.6 case).
    su-exec wodby composer global remove drush/drush; \
    su-exec wodby composer global require drush/drush:"${DRUSH_VER}"; \
    \
    su-exec wodby drush make make.yml -y; \
    \
    if [[ -z "${PHP_DEV}" ]]; then \
        echo "$(cat /etc/sudoers.d/wodby), /usr/local/bin/init" > /etc/sudoers.d/wodby; \
    fi; \
    \
    rm make.yml

USER wodby

COPY init /docker-entrypoint-init.d/
COPY actions /usr/local/bin/