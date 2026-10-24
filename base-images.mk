# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:6b44ee2d1477c6e86c2ca8c6aa82ef78f305988db7cd0f7c8a4339f6da4c29f7
BASE_IMAGE_DIGEST_8.2-r14 := sha256:31792acbbacfb32e50d83475aa55256cd125add324b9f9c1f02a589308339909
BASE_IMAGE_DIGEST_8.3 := sha256:ab7fabc9dea158ebfd169407298415c47ee1f2b7fb1547f963febd549a837fb3
BASE_IMAGE_DIGEST_8.3-r14 := sha256:e31912c9e7c7be010f2b94cee73458a8c3ef3bd3aae1da7a0921afbc8e68f5ae
BASE_IMAGE_DIGEST_8.4 := sha256:0028e2e843abcd431ea425a51990ceffc8fb3cdb3e439d1bf58cafdd5b53b902
BASE_IMAGE_DIGEST_8.4-r14 := sha256:4d4035afc222213f79d8f062f5c972c711debdfe1dc240bde3d3657201b89c39
BASE_IMAGE_DIGEST_8.5 := sha256:e0fe6667afc71e6a7ea133519d8c1a5f313905f1222df17da8a287ddc7116f32
BASE_IMAGE_DIGEST_8.5-r14 := sha256:24978970ce84980c24e47a2de3ea2ff4d5e35aebd73a1a0eea7c9794b8e99b4f

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
