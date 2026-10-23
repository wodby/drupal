# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:a46e96577fbd70b8e96b94075a718c8e7a97cc0cc4a3ce877f1d4dce477995ee
BASE_IMAGE_DIGEST_8.2-r14 := sha256:31792acbbacfb32e50d83475aa55256cd125add324b9f9c1f02a589308339909
BASE_IMAGE_DIGEST_8.3 := sha256:e186a21762fb998fb443447ed6907a1f13c5ea84f7351a908efb56701c64b635
BASE_IMAGE_DIGEST_8.3-r14 := sha256:e31912c9e7c7be010f2b94cee73458a8c3ef3bd3aae1da7a0921afbc8e68f5ae
BASE_IMAGE_DIGEST_8.4 := sha256:c0a8a5a3a3f595c6baf77ab996da45f48d547309b0e2bca3940b38059bc923ee
BASE_IMAGE_DIGEST_8.4-r14 := sha256:4d4035afc222213f79d8f062f5c972c711debdfe1dc240bde3d3657201b89c39
BASE_IMAGE_DIGEST_8.5 := sha256:11624ed2974a693d2d892df0f25a12789bc50f5efe90a22d1266b6a4eaf77268
BASE_IMAGE_DIGEST_8.5-r14 := sha256:24978970ce84980c24e47a2de3ea2ff4d5e35aebd73a1a0eea7c9794b8e99b4f

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
