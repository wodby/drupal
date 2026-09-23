# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:24f8a3d9281d954451f5dc716992919703129f536ab6288895542b9b424c8c14
BASE_IMAGE_DIGEST_8.2-r2 := sha256:4c4bbf4782ac014b238aee498f0d06d8362eab65f92908f1559aca87dd99071a
BASE_IMAGE_DIGEST_8.3 := sha256:51feebdb0a79acfd9cc7d4d9ea89fdb663fd9d8d37751fde6bbc460336c8dd59
BASE_IMAGE_DIGEST_8.3-r2 := sha256:107790801cc43faaab93737da6170756e51359124bd091cb484a2730c4a0fbb4
BASE_IMAGE_DIGEST_8.4 := sha256:5eb6c6cde79ccfbfb76ca1bcf0549f3b906f067517229a00223acf939a6e119f
BASE_IMAGE_DIGEST_8.4-r2 := sha256:fd1b56a7abacd6bb0be5320db2f827b56e7cb85ad8b1bb6070b6c809a320d2f9
BASE_IMAGE_DIGEST_8.5 := sha256:84e1bdcb71b864be9d036aba899a3fbf7b9bfecb9c90b863881fb2b5718a969e
BASE_IMAGE_DIGEST_8.5-r2 := sha256:df002d5225f613a7d1abf39975043a33e19df0ff12e20386c541ea6a136bf8ec

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
