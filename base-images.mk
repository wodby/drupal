# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:516ab9f08b9eff97eaa9b2af3eacd702e2e1e51c9f151417ad27d8acc46c9f07
BASE_IMAGE_DIGEST_8.2-r8 := sha256:d250118fa5e3a8a7d959603a8fdd340aca8300bbbb091bc52ee3442731ca1434
BASE_IMAGE_DIGEST_8.3 := sha256:1fad8403b1297eb5888f07c324913b4e11cfa8959c1e0b5f331f7e84c224bd92
BASE_IMAGE_DIGEST_8.3-r8 := sha256:bb693845699070205fb23bf02949a6a309b29c8cef8b833fa5fa856b9af774ed
BASE_IMAGE_DIGEST_8.4 := sha256:c5311258ebe0adcb4ae99cb01c70041ee5298f9ea4e753e8eb6db6a5cd405434
BASE_IMAGE_DIGEST_8.4-r8 := sha256:7ba17755181fff64d3ba67f29348ce4f469fd71e1b2e5dc8df7b5fa840a87435
BASE_IMAGE_DIGEST_8.5 := sha256:eee4b27aa991daab6fe294f4db6ec4519bc98b3146fb6fd6f59942eed4aefbf1
BASE_IMAGE_DIGEST_8.5-r8 := sha256:0d2842776fb2733f11b9ab548d7b6b59c767e7ad5a90848b3fa8a0cee437b28b

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
