# Vanilla Drupal Docker Container Image

[![Build Status](https://travis-ci.org/wodby/drupal.svg?branch=master)](https://travis-ci.org/wodby/drupal)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/drupal.svg)](https://hub.docker.com/r/wodby/drupal)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/drupal.svg)](https://hub.docker.com/r/wodby/drupal)
[![Docker Layers](https://images.microbadger.com/badges/image/wodby/drupal.svg)](https://microbadger.com/images/wodby/drupal)

## Docker Images

❗For better reliability we release images with stability tags (`wodby/drupal:8-X.X.X`) which correspond to [git tags](https://github.com/wodby/drupal/releases). We strongly recommend using images only with stability tags. 

Overview:

* All images are based on Alpine Linux
* Base image: [wodby/drupal-php](https://github.com/wodby/drupal-php)
* [Travis CI builds](https://travis-ci.org/wodby/drupal) 
* [Docker Hub](https://hub.docker.com/r/wodby/drupal)

| Supported tags and respective `Dockerfile` links                                                         | Drupal | PHP |
| -------------------------------------------------------------------------------------------------------- | ------ | --- |
| `8-7.2`, `8.6`, `8`, `latest` [_(Dockerfile)_](https://github.com/wodby/drupal/tree/master/8/Dockerfile) | 8      | 7.2 |
| `8-7.1` [_(Dockerfile)_](https://github.com/wodby/drupal/tree/master/8/Dockerfile)                       | 8      | 7.1 |
| `8-7.0` [_(Dockerfile)_](https://github.com/wodby/drupal/tree/master/8/Dockerfile)                       | 8      | 7.0 |
| `7-7.2`, `7` [_(Dockerfile)_](https://github.com/wodby/drupal/tree/master/7/Dockerfile)                  | 7      | 7.2 |
| `7-7.1` [_(Dockerfile)_](https://github.com/wodby/drupal/tree/master/7/Dockerfile)                       | 7      | 7.1 |
| `7-7.0` [_(Dockerfile)_](https://github.com/wodby/drupal/tree/master/7/Dockerfile)                       | 7      | 7.0 |
| `7-5.6` [_(Dockerfile)_](https://github.com/wodby/drupal/tree/master/7/Dockerfile)                       | 7      | 5.6 |
| `6-5.6`, `6` [_(Dockerfile)_](https://github.com/wodby/drupal/tree/master/6/Dockerfile)                  | 6      | 5.6 |
| `6-5.3` [_(Dockerfile)_](https://github.com/wodby/drupal/tree/master/6/Dockerfile)                       | 6      | 5.3 |

> The 5.3 version is no longer supported by PHP team, we highly encourage switching to 5.6 

## Environment Variables

##### Drupal 8 settings.php variables

| Variable                       | Default Value                             |
| ------------------------------ | ----------------------------------------- |
| `DB_HOST`                      | `mariadb`                                 |
| `DB_NAME`                      | `drupal`                                  |
| `DB_USER`                      | `drupal`                                  |
| `DB_PASSWORD`                  | `drupal`                                  |
| `DB_DRIVER`                    | `mysql`                                   |
| `DB_PREFIX`                    |                                           |
| `DRUPAL_TRUSTED_HOST_PATTERNS` | `'\\.localhost$', '\\.local$', '\\.loc$'` |

See [wodby/drupal-php](https://github.com/wodby/drupal-php) for all variables.

## Orchestration Actions

See [wodby/drupal-php](https://github.com/wodby/drupal-php) for all actions.

## Complete Drupal Stack

See [wodby/docker4drupal](https://github.com/wodby/docker4drupal)
