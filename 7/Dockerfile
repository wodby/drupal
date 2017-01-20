FROM wodby/nginx:1.10
MAINTAINER Wodby <hello@wodby.com>

RUN rm /etc/gotpl/default-vhost.conf.tpl

COPY drupal.conf.tpl /etc/gotpl/
COPY docker-entrypoint-drupal.sh /

ENTRYPOINT ["/docker-entrypoint-drupal.sh"]
