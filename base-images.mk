# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:69ff202208e11526898dc1eee0c16b8ecbbc3cdd484e9cf7ee1b63aa824b5381
BASE_IMAGE_DIGEST_8.2-r19 := sha256:9a5211c7eb4d8ccaa82f2f04e5666ed020158c4484cc8fd771fdcc6c4134b2ac
BASE_IMAGE_DIGEST_8.3 := sha256:14ebde306da23be9f4b7bd7412431453fb3350d2517ce15a19df5a2c4699e36b
BASE_IMAGE_DIGEST_8.3-r19 := sha256:0552a744bfeee9841179fd116a7a679adf031b9f1dd2fee49f5a2e586af5e91b
BASE_IMAGE_DIGEST_8.4 := sha256:1ed492e0c772a8e665e147e5df236f240f40abae504e17e19a9265e9f2418153
BASE_IMAGE_DIGEST_8.4-r19 := sha256:4ca3075a9a69c71b5403578d1573e8add3859a489c9d82d0a2b28e9e90267c34
BASE_IMAGE_DIGEST_8.5 := sha256:be3334d557bac583feaedb294873841dc807c63608b4529793945d0544f1a768
BASE_IMAGE_DIGEST_8.5-r19 := sha256:d8e77cd998d1febdde5cb9d1e79385d5b34683f71086929b9e08bf9ddd613fea

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
