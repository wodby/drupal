# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:e1b2b6101a0d33aa9b0f2ded887269264847dc4a9038e9e71a9805d86b1b06a2
BASE_IMAGE_DIGEST_8.2-r14 := sha256:31792acbbacfb32e50d83475aa55256cd125add324b9f9c1f02a589308339909
BASE_IMAGE_DIGEST_8.3 := sha256:3a62380d34f4a445e84209a9b94dac2ecba4065bda981f3046b10604d1b9831f
BASE_IMAGE_DIGEST_8.3-r14 := sha256:e31912c9e7c7be010f2b94cee73458a8c3ef3bd3aae1da7a0921afbc8e68f5ae
BASE_IMAGE_DIGEST_8.4 := sha256:299b3592aff13d29196bec8e8b375e961b60179fdaaac55e5d0323d34b365a91
BASE_IMAGE_DIGEST_8.4-r14 := sha256:4d4035afc222213f79d8f062f5c972c711debdfe1dc240bde3d3657201b89c39
BASE_IMAGE_DIGEST_8.5 := sha256:0f7d7d3acf46baa13d51a7359b678b32713dc69410f9f9ce336d35e116e63984
BASE_IMAGE_DIGEST_8.5-r14 := sha256:24978970ce84980c24e47a2de3ea2ff4d5e35aebd73a1a0eea7c9794b8e99b4f

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
