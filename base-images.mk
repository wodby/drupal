# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:ad4481a850b669d0d2582183f9d23314f95341b12ee0d34a2a8662ff1f5cfe04
BASE_IMAGE_DIGEST_8.2-r0 := sha256:243582e941e57dc9653983484b9079657acd81a657ddd2a0e0b5ac945f85cc02
BASE_IMAGE_DIGEST_8.3 := sha256:bcaaa7b6d6bfd3c628a0ef5254b85b7256e7b2565a49aae154ce41916cb15cd3
BASE_IMAGE_DIGEST_8.3-r0 := sha256:4b671412cda250bb73a603c2464c305bd8a17ef3f66be7adf5dbcfce6f7ccc24
BASE_IMAGE_DIGEST_8.4 := sha256:ffa1ae8d26f34b28f5b6c18bbedb369bcb86f7000b17263f9af00c6563e6484b
BASE_IMAGE_DIGEST_8.4-r0 := sha256:387bc30d316c175886dd22f0eb1ab935a494d8142969f6ab185790473541514e
BASE_IMAGE_DIGEST_8.5 := sha256:76bed36994b9990c58488ddd2377b1c39b9a7307c0367ad47f53b522c3451d28
BASE_IMAGE_DIGEST_8.5-r0 := sha256:f91ecae99d8076367707030f76f85aba8c5e3d253098d3da2356a0cdda2837ae

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
