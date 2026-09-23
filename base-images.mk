# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:24f8a3d9281d954451f5dc716992919703129f536ab6288895542b9b424c8c14
BASE_IMAGE_DIGEST_8.2-r3 := sha256:24f8a3d9281d954451f5dc716992919703129f536ab6288895542b9b424c8c14
BASE_IMAGE_DIGEST_8.3 := sha256:51feebdb0a79acfd9cc7d4d9ea89fdb663fd9d8d37751fde6bbc460336c8dd59
BASE_IMAGE_DIGEST_8.3-r3 := sha256:51feebdb0a79acfd9cc7d4d9ea89fdb663fd9d8d37751fde6bbc460336c8dd59
BASE_IMAGE_DIGEST_8.4 := sha256:5eb6c6cde79ccfbfb76ca1bcf0549f3b906f067517229a00223acf939a6e119f
BASE_IMAGE_DIGEST_8.4-r3 := sha256:5eb6c6cde79ccfbfb76ca1bcf0549f3b906f067517229a00223acf939a6e119f
BASE_IMAGE_DIGEST_8.5 := sha256:84e1bdcb71b864be9d036aba899a3fbf7b9bfecb9c90b863881fb2b5718a969e
BASE_IMAGE_DIGEST_8.5-r3 := sha256:84e1bdcb71b864be9d036aba899a3fbf7b9bfecb9c90b863881fb2b5718a969e

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
