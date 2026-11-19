# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:e0181eb2ddfef883ca8c0933b430d9be88d1c504b705ed0b42a1b5fa69a35a96
BASE_IMAGE_DIGEST_8.2-r21 := sha256:e321ccdbaf6bc61d323e56bfd3edc15f6fa9f4ded958cab38b9e3f084f1f67fc
BASE_IMAGE_DIGEST_8.3 := sha256:05f5a53d3655e4b3df8cc957e2bd52679ff0ed7f1d95a9caa61f0e70dafc0b3e
BASE_IMAGE_DIGEST_8.3-r21 := sha256:528c5e75caa7a772e5d2f3c45b05f611049c97b3a56386b8be8a9376bd7ca7cc
BASE_IMAGE_DIGEST_8.4 := sha256:ea33705cd7308a22b8c0c01d14bb865644b56622f5e0edac9f8e9e2729d61915
BASE_IMAGE_DIGEST_8.4-r21 := sha256:2cc9a01d8c0ad08b8a9bb0caca90e5974634aa660d4df3e469b54a49115fac33
BASE_IMAGE_DIGEST_8.5 := sha256:9ab085cbb2dee18344da703cf722c39cea938b6b693576b6be19705d85e7311b
BASE_IMAGE_DIGEST_8.5-r21 := sha256:a748a9a2e297e245abf2a3ace3b9ce5fcf288ef8b6d9013eba935a728d5c9933

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
