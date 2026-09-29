# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:c587d2a56c1ca328fe1d19e86c72b58acbc180dd0b61fccef162deebfa0b8e52
BASE_IMAGE_DIGEST_8.2-r7 := sha256:4e988c7cd6ead53de606c1c4c141962cce057bad6ba52e5fd62364a774009222
BASE_IMAGE_DIGEST_8.3 := sha256:584d3064d01d407f964979ecb4578d0150a1e0e3aebda0b869cb952b95855e4a
BASE_IMAGE_DIGEST_8.3-r7 := sha256:5009b58ac8a7222b63111aeda564df632aafda30fbc5edb94f52bc0cd9fdbe4e
BASE_IMAGE_DIGEST_8.4 := sha256:d326d5aae0fb2f35a849e0ac3fdd9f95a286fa4ac901c9ddba7e5a2966c22800
BASE_IMAGE_DIGEST_8.4-r7 := sha256:ab9556bef2e6001c1316aa627a38cdf786ba1581c23fefd1908e809c2097752f
BASE_IMAGE_DIGEST_8.5 := sha256:d7d18cedded663774989ba8789965b85928419dcc9337c9685787b64bd494c85
BASE_IMAGE_DIGEST_8.5-r7 := sha256:64c28afc596257f19110a71451a1e148d4fb91d902909d33260c7a8c8c4ce5f1

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
