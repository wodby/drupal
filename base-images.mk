# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:4e988c7cd6ead53de606c1c4c141962cce057bad6ba52e5fd62364a774009222
BASE_IMAGE_DIGEST_8.2-r6 := sha256:6ecf9b378019bd4bac789527ac45be5d6f5aa5cdacace003c18657dbb7db931f
BASE_IMAGE_DIGEST_8.3 := sha256:5009b58ac8a7222b63111aeda564df632aafda30fbc5edb94f52bc0cd9fdbe4e
BASE_IMAGE_DIGEST_8.3-r6 := sha256:24ee6667c81bbc8c9e45b433304456a496737b5d0bbd7b89429de680e727bf6c
BASE_IMAGE_DIGEST_8.4 := sha256:ab9556bef2e6001c1316aa627a38cdf786ba1581c23fefd1908e809c2097752f
BASE_IMAGE_DIGEST_8.4-r6 := sha256:12a70fb52ee72c5d2d155bb199f64e2ae5e8367257ada761723a00f0fe34b1f7
BASE_IMAGE_DIGEST_8.5 := sha256:64c28afc596257f19110a71451a1e148d4fb91d902909d33260c7a8c8c4ce5f1
BASE_IMAGE_DIGEST_8.5-r6 := sha256:06861a61667cffbbbd2a684deb2b167df975e9f9a325e16307327074ebe61e3f

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
