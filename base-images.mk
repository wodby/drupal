# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:1b0e84270cb826d61ad7de55d83869a98596702c4454f02044684fdb8ec835bd
BASE_IMAGE_DIGEST_8.2-r6 := sha256:6ecf9b378019bd4bac789527ac45be5d6f5aa5cdacace003c18657dbb7db931f
BASE_IMAGE_DIGEST_8.3 := sha256:603671918e5a3df853fa2bda7503d35ad3a22f71886ba8c0a5fcf8245259fa34
BASE_IMAGE_DIGEST_8.3-r6 := sha256:24ee6667c81bbc8c9e45b433304456a496737b5d0bbd7b89429de680e727bf6c
BASE_IMAGE_DIGEST_8.4 := sha256:b6c76538853c97ce74d7a2e78ea38cf0a1aecfa905e02f89965c1e41829f8813
BASE_IMAGE_DIGEST_8.4-r6 := sha256:12a70fb52ee72c5d2d155bb199f64e2ae5e8367257ada761723a00f0fe34b1f7
BASE_IMAGE_DIGEST_8.5 := sha256:db96c057ab1783eb11be607e337133c51f396351a8124c9386703cc311cd74e5
BASE_IMAGE_DIGEST_8.5-r6 := sha256:06861a61667cffbbbd2a684deb2b167df975e9f9a325e16307327074ebe61e3f

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
