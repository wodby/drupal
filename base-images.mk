# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:c587d2a56c1ca328fe1d19e86c72b58acbc180dd0b61fccef162deebfa0b8e52
BASE_IMAGE_DIGEST_8.2-r8 := sha256:d250118fa5e3a8a7d959603a8fdd340aca8300bbbb091bc52ee3442731ca1434
BASE_IMAGE_DIGEST_8.3 := sha256:584d3064d01d407f964979ecb4578d0150a1e0e3aebda0b869cb952b95855e4a
BASE_IMAGE_DIGEST_8.3-r8 := sha256:bb693845699070205fb23bf02949a6a309b29c8cef8b833fa5fa856b9af774ed
BASE_IMAGE_DIGEST_8.4 := sha256:d326d5aae0fb2f35a849e0ac3fdd9f95a286fa4ac901c9ddba7e5a2966c22800
BASE_IMAGE_DIGEST_8.4-r8 := sha256:7ba17755181fff64d3ba67f29348ce4f469fd71e1b2e5dc8df7b5fa840a87435
BASE_IMAGE_DIGEST_8.5 := sha256:d7d18cedded663774989ba8789965b85928419dcc9337c9685787b64bd494c85
BASE_IMAGE_DIGEST_8.5-r8 := sha256:0d2842776fb2733f11b9ab548d7b6b59c767e7ad5a90848b3fa8a0cee437b28b

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
