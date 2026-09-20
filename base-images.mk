# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:f4fd12114c1704645b0433b4374f90bd292c726cbf71a18d6729cf3e4ef7c3e8
BASE_IMAGE_DIGEST_8.2-r1 := sha256:ad4481a850b669d0d2582183f9d23314f95341b12ee0d34a2a8662ff1f5cfe04
BASE_IMAGE_DIGEST_8.3 := sha256:cab67d1b672195a69630867597da4c4fc2b37a414cdcf1e27825a93809d61f4b
BASE_IMAGE_DIGEST_8.3-r1 := sha256:bcaaa7b6d6bfd3c628a0ef5254b85b7256e7b2565a49aae154ce41916cb15cd3
BASE_IMAGE_DIGEST_8.4 := sha256:bd6221c04fd07b7c90f14df346a539449a34d16115de75d8f802f319f6a7eb7e
BASE_IMAGE_DIGEST_8.4-r1 := sha256:ffa1ae8d26f34b28f5b6c18bbedb369bcb86f7000b17263f9af00c6563e6484b
BASE_IMAGE_DIGEST_8.5 := sha256:5fdb89136c9e9a7b28e62aedf26f7173e85878a470ebd3e98bb1a557cc5eda39
BASE_IMAGE_DIGEST_8.5-r1 := sha256:76bed36994b9990c58488ddd2377b1c39b9a7307c0367ad47f53b522c3451d28

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
