# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:f57d3e34ceea3771ee17d82fee0d44a433b7fdacb89c660109b0e7c834b2b038
BASE_IMAGE_DIGEST_8.2-r21 := sha256:e321ccdbaf6bc61d323e56bfd3edc15f6fa9f4ded958cab38b9e3f084f1f67fc
BASE_IMAGE_DIGEST_8.3 := sha256:e1d16af19d04c57338e19f10f37cf51cff57b10d045b9d92c1556128e8c97028
BASE_IMAGE_DIGEST_8.3-r21 := sha256:528c5e75caa7a772e5d2f3c45b05f611049c97b3a56386b8be8a9376bd7ca7cc
BASE_IMAGE_DIGEST_8.4 := sha256:d3e803aa649035e39255b370dec4bc5fe73b3ee0b8dea1ad85f49d2262159f01
BASE_IMAGE_DIGEST_8.4-r21 := sha256:2cc9a01d8c0ad08b8a9bb0caca90e5974634aa660d4df3e469b54a49115fac33
BASE_IMAGE_DIGEST_8.5 := sha256:aaeb8b4583efc6bc71e9abf2305d535fa9674b9120fba8b7ea2b9977625d5315
BASE_IMAGE_DIGEST_8.5-r21 := sha256:a748a9a2e297e245abf2a3ace3b9ce5fcf288ef8b6d9013eba935a728d5c9933

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
