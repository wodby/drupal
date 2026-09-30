# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:0421f6a4e9edd8da4f95fecd3c798c54adcafecf79263ed8a00960cf2c2afb8b
BASE_IMAGE_DIGEST_8.2-r8 := sha256:d250118fa5e3a8a7d959603a8fdd340aca8300bbbb091bc52ee3442731ca1434
BASE_IMAGE_DIGEST_8.3 := sha256:5fd2dccea7b59ea403d6ab6342595d1b1006afcbfd7276311fade24cb4bfbb40
BASE_IMAGE_DIGEST_8.3-r8 := sha256:bb693845699070205fb23bf02949a6a309b29c8cef8b833fa5fa856b9af774ed
BASE_IMAGE_DIGEST_8.4 := sha256:8f7c909de92d2aeb9a80494513fb19535c8c9355f8f497bf0401e7fc046099ee
BASE_IMAGE_DIGEST_8.4-r8 := sha256:7ba17755181fff64d3ba67f29348ce4f469fd71e1b2e5dc8df7b5fa840a87435
BASE_IMAGE_DIGEST_8.5 := sha256:4e43d4a3f0d5e2652f0160a4a0948a03c7170e560d439a1d5cf56743f4210bf8
BASE_IMAGE_DIGEST_8.5-r8 := sha256:0d2842776fb2733f11b9ab548d7b6b59c767e7ad5a90848b3fa8a0cee437b28b

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
