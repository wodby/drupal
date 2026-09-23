# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:4c4bbf4782ac014b238aee498f0d06d8362eab65f92908f1559aca87dd99071a
BASE_IMAGE_DIGEST_8.2-r1 := sha256:ad4481a850b669d0d2582183f9d23314f95341b12ee0d34a2a8662ff1f5cfe04
BASE_IMAGE_DIGEST_8.3 := sha256:107790801cc43faaab93737da6170756e51359124bd091cb484a2730c4a0fbb4
BASE_IMAGE_DIGEST_8.3-r1 := sha256:bcaaa7b6d6bfd3c628a0ef5254b85b7256e7b2565a49aae154ce41916cb15cd3
BASE_IMAGE_DIGEST_8.4 := sha256:c0f0cc633a8429520caf662acdea01c5f03da619ef33aba422435db717d9f9f8
BASE_IMAGE_DIGEST_8.4-r1 := sha256:ffa1ae8d26f34b28f5b6c18bbedb369bcb86f7000b17263f9af00c6563e6484b
BASE_IMAGE_DIGEST_8.5 := sha256:df002d5225f613a7d1abf39975043a33e19df0ff12e20386c541ea6a136bf8ec
BASE_IMAGE_DIGEST_8.5-r1 := sha256:76bed36994b9990c58488ddd2377b1c39b9a7307c0367ad47f53b522c3451d28

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
