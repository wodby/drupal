# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:49fca1437075b37798f8c3aa0a01e0d66ab320e64779cacc4e8724c458b5dddd
BASE_IMAGE_DIGEST_8.2-r21 := sha256:e321ccdbaf6bc61d323e56bfd3edc15f6fa9f4ded958cab38b9e3f084f1f67fc
BASE_IMAGE_DIGEST_8.3 := sha256:6eb6013c70a20103f9512656bbbfba70d079a341a7e7a6077a391752d6c7f970
BASE_IMAGE_DIGEST_8.3-r21 := sha256:528c5e75caa7a772e5d2f3c45b05f611049c97b3a56386b8be8a9376bd7ca7cc
BASE_IMAGE_DIGEST_8.4 := sha256:7246615b579e310965cfd87e15e35dfb57c2a0eab205c1471829196e25456f6f
BASE_IMAGE_DIGEST_8.4-r21 := sha256:2cc9a01d8c0ad08b8a9bb0caca90e5974634aa660d4df3e469b54a49115fac33
BASE_IMAGE_DIGEST_8.5 := sha256:97b9c97ffdd40487d7b563b5d3c27c8e358626def362b8395d4207906d987f21
BASE_IMAGE_DIGEST_8.5-r21 := sha256:a748a9a2e297e245abf2a3ace3b9ce5fcf288ef8b6d9013eba935a728d5c9933

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
