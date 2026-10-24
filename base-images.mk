# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:8fb670e426812774a9bad1b54da1ae6e0d9b5828ad47dc478527563b5af02782
BASE_IMAGE_DIGEST_8.2-r14 := sha256:31792acbbacfb32e50d83475aa55256cd125add324b9f9c1f02a589308339909
BASE_IMAGE_DIGEST_8.3 := sha256:02a4f2c0c9100da6b8bfa078b1e3173f677c7b21976e427be0d5a56bc763a14f
BASE_IMAGE_DIGEST_8.3-r14 := sha256:e31912c9e7c7be010f2b94cee73458a8c3ef3bd3aae1da7a0921afbc8e68f5ae
BASE_IMAGE_DIGEST_8.4 := sha256:444f17d754426746c741160e7469e138cb1a70e696ea3d1ce9e8490e8333b001
BASE_IMAGE_DIGEST_8.4-r14 := sha256:4d4035afc222213f79d8f062f5c972c711debdfe1dc240bde3d3657201b89c39
BASE_IMAGE_DIGEST_8.5 := sha256:613ecb2fcbfab146ce05a508c2c6dd201bd3d370cb897ef9cd0178c0e8705410
BASE_IMAGE_DIGEST_8.5-r14 := sha256:24978970ce84980c24e47a2de3ea2ff4d5e35aebd73a1a0eea7c9794b8e99b4f

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
