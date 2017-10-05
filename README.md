# Vanilla Drupal Docker Container Image

[![Build Status](https://travis-ci.org/wodby/drupal.svg?branch=master)](https://travis-ci.org/wodby/drupal)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/drupal.svg)](https://hub.docker.com/r/wodby/drupal)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/drupal.svg)](https://hub.docker.com/r/wodby/drupal)
[![Wodby Slack](http://slack.wodby.com/badge.svg)](http://slack.wodby.com)

## Docker Images

* All images are based on Alpine Linux
* Base image: [wodby/drupal-php](https://github.com/wodby/drupal-php)
* [Travis CI builds](https://travis-ci.org/wodby/drupal) 
* [Docker Hub](https://hub.docker.com/r/wodby/drupal)

For better reliability we release images with stability tags (`wodby/drupal:8-7.1-X.X.X`) which correspond to git tags. We **strongly recommend** using images only with stability tags. Below listed basic tags:

| Image Tag (Dockerfile)                                                    | Drupal | PHP |
| ------------------------------------------------------------------------- | ------ | --- |
| [8-7.1](https://github.com/wodby/drupal/tree/master/8/7/Dockerfile)       | 8      | 7.1 |
| [8-7.0](https://github.com/wodby/drupal/tree/master/8/7/Dockerfile)       | 8      | 7.0 |
| [7-7.1](https://github.com/wodby/drupal/tree/master/7/7/Dockerfile)       | 7      | 7.1 |
| [7-7.0](https://github.com/wodby/drupal/tree/master/7/7/Dockerfile)       | 7      | 7.0 |
| [7-5.6](https://github.com/wodby/drupal/tree/master/7/5/Dockerfile)       | 7      | 5.6 |
| [6-5.6](https://github.com/wodby/drupal/tree/master/6/5/Dockerfile)       | 6      | 5.6 |
| [6-5.3](https://github.com/wodby/drupal/tree/master/6/5/Dockerfile)       | 6      | 5.3 |
| [8-7.1-debug](https://github.com/wodby/drupal/tree/master/8/7/Dockerfile) | 8      | 7.1 |
| [8-7.0-debug](https://github.com/wodby/drupal/tree/master/8/7/Dockerfile) | 8      | 7.0 |
| [7-7.1-debug](https://github.com/wodby/drupal/tree/master/7/7/Dockerfile) | 7      | 7.1 |
| [7-7.0-debug](https://github.com/wodby/drupal/tree/master/7/7/Dockerfile) | 7      | 7.0 |
| [7-5.6-debug](https://github.com/wodby/drupal/tree/master/7/5/Dockerfile) | 7      | 5.6 |
| [6-5.6-debug](https://github.com/wodby/drupal/tree/master/6/5/Dockerfile) | 6      | 5.6 |

## Environment Variables

See [wodby/drupal-php](https://github.com/wodby/drupal-php)

## Complete Drupal Stack

See [wodby/docker4drupal](https://github.com/wodby/docker4drupal)
