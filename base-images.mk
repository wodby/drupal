# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:2a4129d48fc9b3c986e5957cbd424fa6d21018710f8b5e4a054591a34340a436
BASE_IMAGE_DIGEST_8.2-r14 := sha256:31792acbbacfb32e50d83475aa55256cd125add324b9f9c1f02a589308339909
BASE_IMAGE_DIGEST_8.3 := sha256:227f0d79fbba02cd5826306384629bbe4edc1c8f3e0edad543eeb8a3aa3dc78a
BASE_IMAGE_DIGEST_8.3-r14 := sha256:e31912c9e7c7be010f2b94cee73458a8c3ef3bd3aae1da7a0921afbc8e68f5ae
BASE_IMAGE_DIGEST_8.4 := sha256:6e17d522ce9cf4ede69304a1249559e11239ef5f403a8edd6007f7629b3467e5
BASE_IMAGE_DIGEST_8.4-r14 := sha256:4d4035afc222213f79d8f062f5c972c711debdfe1dc240bde3d3657201b89c39
BASE_IMAGE_DIGEST_8.5 := sha256:dc08096b79543e1b3b51eb5666bb6bee3b0e9441fae4d2f02753d960b2365da7
BASE_IMAGE_DIGEST_8.5-r14 := sha256:24978970ce84980c24e47a2de3ea2ff4d5e35aebd73a1a0eea7c9794b8e99b4f

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
