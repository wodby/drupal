# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:e0181eb2ddfef883ca8c0933b430d9be88d1c504b705ed0b42a1b5fa69a35a96
BASE_IMAGE_DIGEST_8.2-r23 := sha256:3d62d275f642edc784d37f1cd57bd8cb6154212faa6e482e63725f465f533764
BASE_IMAGE_DIGEST_8.3 := sha256:05f5a53d3655e4b3df8cc957e2bd52679ff0ed7f1d95a9caa61f0e70dafc0b3e
BASE_IMAGE_DIGEST_8.3-r23 := sha256:54f680d879592b3c99d9853c029ee0733beb2d2b5e1275979a210e1320e12bb3
BASE_IMAGE_DIGEST_8.4 := sha256:ea33705cd7308a22b8c0c01d14bb865644b56622f5e0edac9f8e9e2729d61915
BASE_IMAGE_DIGEST_8.4-r23 := sha256:9b5e10a005299cd50b6b44b115b63150ce2892a52f2ecb0db50670000a28d811
BASE_IMAGE_DIGEST_8.5 := sha256:9ab085cbb2dee18344da703cf722c39cea938b6b693576b6be19705d85e7311b
BASE_IMAGE_DIGEST_8.5-r23 := sha256:8afb27c2dd14bb0853891fe0e58b05ede83620530636cfc5a5ac596405e23db8

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
