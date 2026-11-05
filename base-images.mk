# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:4ea95e85a263c38e58aa4a2905dff263b28bfcd6cef3c9143f622c16037c6721
BASE_IMAGE_DIGEST_8.2-r16 := sha256:4b1b22dad3535c9cbc92fbcd27f1642581396809ac2d75981b7d2639f68c5056
BASE_IMAGE_DIGEST_8.3 := sha256:67400eb3758d6ad8ddc6589b63a7d025f12598c0ec9085ca9a105454eede4960
BASE_IMAGE_DIGEST_8.3-r16 := sha256:cd53ba5b2ceedbccebf6e39159799958454966c4fd05955ca2876aafdba753a6
BASE_IMAGE_DIGEST_8.4 := sha256:e56d69cb19212ba366d17522fce94c70151a6320fb7fdf427e65ca82046c69f4
BASE_IMAGE_DIGEST_8.4-r16 := sha256:709749037af6af549b42ef45a178faa16f9c0bb09d81f0749777f40dab0b88c8
BASE_IMAGE_DIGEST_8.5 := sha256:e5d280046f33c1b2b4cb197a2d69ad659e3bcf70ed6b9d90e0c7998aa0855b7c
BASE_IMAGE_DIGEST_8.5-r16 := sha256:a4998d78480a13b5e43363349dac889532e8aa2dc723fbbda1b185247c0fcc02

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
