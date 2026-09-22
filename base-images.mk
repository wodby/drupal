# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:b83502bfe4e75f9c5be9847db2ba1635c4321d1f9d795dd53b00161da44215d2
BASE_IMAGE_DIGEST_8.2-r1 := sha256:ad4481a850b669d0d2582183f9d23314f95341b12ee0d34a2a8662ff1f5cfe04
BASE_IMAGE_DIGEST_8.3 := sha256:68305beb0086fb66e05cb9cc98c0ed70ff53b65cc0bb3a2c2f888b856b451de0
BASE_IMAGE_DIGEST_8.3-r1 := sha256:bcaaa7b6d6bfd3c628a0ef5254b85b7256e7b2565a49aae154ce41916cb15cd3
BASE_IMAGE_DIGEST_8.4 := sha256:eda15b3a8e31cb90d13aa0ffeea709accf9af54f2d70ca11a85d56a974df62af
BASE_IMAGE_DIGEST_8.4-r1 := sha256:ffa1ae8d26f34b28f5b6c18bbedb369bcb86f7000b17263f9af00c6563e6484b
BASE_IMAGE_DIGEST_8.5 := sha256:726ce4c1dd0317fe5ef5e8766688eb896fd89a198f2601dd739daab6ce658a28
BASE_IMAGE_DIGEST_8.5-r1 := sha256:76bed36994b9990c58488ddd2377b1c39b9a7307c0367ad47f53b522c3451d28

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
