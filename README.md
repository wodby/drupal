# Docker images based on wodby/drupal-php with vanilla Drupal

Used to test [Docker4Drupal](http://docker4drupal.org)

[![Build Status](https://travis-ci.org/wodby/drupal.svg?branch=master)](https://travis-ci.org/wodby/drupal)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/drupal.svg)](https://hub.docker.com/r/wodby/drupal)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/drupal.svg)](https://hub.docker.com/r/wodby/drupal)

## Supported tags and respective `Dockerfile` links

- [`6-5.3-2.1.0`, `6-5.3`, (*6-5.3/Dockerfile*)](https://github.com/wodby/drupal/tree/master/6/5.3/Dockerfile)
- [`6-5.6-2.1.0`, `6-5.6`, (*6-5.6/Dockerfile*)](https://github.com/wodby/drupal/tree/master/6/5.6/Dockerfile)
- [`7-5.6-2.1.0`, `7-5.6`, (*7-5.6/Dockerfile*)](https://github.com/wodby/drupal/tree/master/7/5.6/Dockerfile)
- [`7-7.0-2.1.0`, `7-7.0`, (*7-7.0/Dockerfile*)](https://github.com/wodby/drupal/tree/master/7/7.0/Dockerfile)
- [`7-7.1-2.1.0`, `7-7.1`, (*7-7.1/Dockerfile*)](https://github.com/wodby/drupal/tree/master/7/7.1/Dockerfile)
- [`8-7.0-2.1.0`, `8-7.0`, (*8-7.0/Dockerfile*)](https://github.com/wodby/drupal/tree/master/8/7.0/Dockerfile)
- [`8-7.1-2.1.0`, `8-7.1`, (*8-7.1/Dockerfile*)](https://github.com/wodby/drupal/tree/master/8/7.1/Dockerfile)

## Environment Variables Available for Customization

See at [wodby/drupal-php](https://github.com/wodby/drupal-php)

## Actions

Usage:

```
make COMMAND [params ...]
 
commands:
    check-ready [max_try=<10> wait_seconds=<5>]
     
default params values:
    max_try 10
    wait_seconds 1
```

Examples:

```bash
# Wait for Drupal to be copied
$ docker exec -ti [ID] make check-ready -f /usr/local/bin/actions.mk
```

## Using in Production

Deploy docker-based infrastructure for Drupal to your own server via [![Wodby](https://www.google.com/s2/favicons?domain=wodby.com) Wodby](https://wodby.com).
