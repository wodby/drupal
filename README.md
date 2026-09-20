# Vanilla Drupal Docker Container Image

[![Build Status](https://github.com/wodby/drupal/workflows/Build%20docker%20image/badge.svg)](https://github.com/wodby/drupal/actions)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/drupal.svg)](https://hub.docker.com/r/wodby/drupal)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/drupal.svg)](https://hub.docker.com/r/wodby/drupal)

## Docker Images

Use image revision tags such as `wodby/drupal:11-rN` to select a Wodby image revision.
Major and minor tags use the repository release number. Full-version tags such as
`wodby/drupal:11.4.7-r0` start at `r0` for each exact upstream version.
Every published versioned revision tag has a matching annotated Git tag pointing to its release commit.
Existing tags remain available after support for their major or minor version ends.
See [release tags](https://github.com/wodby/drupal/tags) for available revisions and the [image revision policy](https://github.com/wodby/images#image-revisions) for upgrade guidance.
Previously published image tags remain available.

Overview:

- All images are based on Alpine Linux
- Base image: [wodby/drupal-php](https://github.com/wodby/drupal-php)
- [GitHub actions builds](https://github.com/wodby/drupal/actions)
- [Docker Hub](https://hub.docker.com/r/wodby/drupal)

| Supported tags and respective `Dockerfile` links                                                             | Drupal | PHP |
|--------------------------------------------------------------------------------------------------------------|--------|-----|
| `11-8.5`, `11-8`, `11`, `latest` [_(Dockerfile)_](https://github.com/wodby/drupal/tree/master/11/Dockerfile) | 11     | 8.5 |
| `11-8.4` [_(Dockerfile)_](https://github.com/wodby/drupal/tree/master/11/Dockerfile)                         | 11     | 8.4 |
| `11-8.3` [_(Dockerfile)_](https://github.com/wodby/drupal/tree/master/11/Dockerfile)                         | 11     | 8.3 |
| `10-8.4`, `10-8`, `10` [_(Dockerfile)_](https://github.com/wodby/drupal/tree/master/10/Dockerfile)           | 10     | 8.4 |
| `10-8.3` [_(Dockerfile)_](https://github.com/wodby/drupal/tree/master/10/Dockerfile)                         | 10     | 8.3 |
| `10-8.2` [_(Dockerfile)_](https://github.com/wodby/drupal/tree/master/10/Dockerfile)                         | 10     | 8.2 |

All images built for `linux/amd64` and `linux/arm64`

## Environment Variables

##### settings.php variables

| Variable                       | Default Value                             |
|--------------------------------|-------------------------------------------|
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

## Building with pinned base images

Build with the Makefile to use the base image digests in `base-images.mk`. Local
builds and CI resolve the same version and variant to the same multi-platform
image. A version without a pin fails before the build starts.

When adding a supported base version or variant, add its image index digest to
`base-images.mk`. For a custom build, override `BASE_IMAGE` with a complete
`repository:tag@sha256:...` reference.
