# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:ea9df5668bf15f1e63916626e554b9b399bad3c9305065e3775c36b6352f229b
BASE_IMAGE_DIGEST_8.2-r21 := sha256:e321ccdbaf6bc61d323e56bfd3edc15f6fa9f4ded958cab38b9e3f084f1f67fc
BASE_IMAGE_DIGEST_8.3 := sha256:2dc215ebd3e1e34c5392f4b516e2268472e3c83390c1099a00da38e99771375b
BASE_IMAGE_DIGEST_8.3-r21 := sha256:528c5e75caa7a772e5d2f3c45b05f611049c97b3a56386b8be8a9376bd7ca7cc
BASE_IMAGE_DIGEST_8.4 := sha256:de759aa40d631f2e3badc18a3c445d50696d394913f982c51d8366d3820a3b13
BASE_IMAGE_DIGEST_8.4-r21 := sha256:2cc9a01d8c0ad08b8a9bb0caca90e5974634aa660d4df3e469b54a49115fac33
BASE_IMAGE_DIGEST_8.5 := sha256:044f71877af09d37db7700a2a57c5e1f46a75fe12ca9fffa22678e7f731725a2
BASE_IMAGE_DIGEST_8.5-r21 := sha256:a748a9a2e297e245abf2a3ace3b9ce5fcf288ef8b6d9013eba935a728d5c9933

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
