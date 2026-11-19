# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:e8a6a4d700d673bc7772d267b8d912cdff061c3cb807a148b0fa3138ec1a1bc1
BASE_IMAGE_DIGEST_8.2-r21 := sha256:e321ccdbaf6bc61d323e56bfd3edc15f6fa9f4ded958cab38b9e3f084f1f67fc
BASE_IMAGE_DIGEST_8.3 := sha256:41aa2d2925db1acbbc0f8086f93e13686c87f4cdd123ef4fb14d2237c582da74
BASE_IMAGE_DIGEST_8.3-r21 := sha256:528c5e75caa7a772e5d2f3c45b05f611049c97b3a56386b8be8a9376bd7ca7cc
BASE_IMAGE_DIGEST_8.4 := sha256:18b6b849651246897428e09361d108d24857b46906e9445f6ff15c97cd738273
BASE_IMAGE_DIGEST_8.4-r21 := sha256:2cc9a01d8c0ad08b8a9bb0caca90e5974634aa660d4df3e469b54a49115fac33
BASE_IMAGE_DIGEST_8.5 := sha256:96bf0f4a745563f74dd19ef2d81f8098cf1e6d23d22fda6a527da1b3f18d044c
BASE_IMAGE_DIGEST_8.5-r21 := sha256:a748a9a2e297e245abf2a3ace3b9ce5fcf288ef8b6d9013eba935a728d5c9933

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
