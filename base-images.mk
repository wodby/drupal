# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:119e274ef28ab5b253b31e8ae91a51542e1a29b73351a2aae44eba58a02bc148
BASE_IMAGE_DIGEST_8.2-r0 := sha256:243582e941e57dc9653983484b9079657acd81a657ddd2a0e0b5ac945f85cc02
BASE_IMAGE_DIGEST_8.3 := sha256:7fb50f14d1edda047cb53a26d6bcdd17497707b89e3948dec3a4a8f0c9d9c781
BASE_IMAGE_DIGEST_8.3-r0 := sha256:4b671412cda250bb73a603c2464c305bd8a17ef3f66be7adf5dbcfce6f7ccc24
BASE_IMAGE_DIGEST_8.4 := sha256:e7e0b4b24f489f39a44daa0072b96e54346dbca5e7afa5ea706a01a61342c92a
BASE_IMAGE_DIGEST_8.4-r0 := sha256:387bc30d316c175886dd22f0eb1ab935a494d8142969f6ab185790473541514e
BASE_IMAGE_DIGEST_8.5 := sha256:e5b4a8e9cbe62e3e4fb9bb73808dac9aaf9f16680bbac10cec85cbfb10407bd5
BASE_IMAGE_DIGEST_8.5-r0 := sha256:f91ecae99d8076367707030f76f85aba8c5e3d253098d3da2356a0cdda2837ae

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
