# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:a65e25cc4e7632e9eafe39212a33373a86ea1e570840e3e76d6d78462bfed7c3
BASE_IMAGE_DIGEST_8.2-r24 := sha256:360a62c4e61f9c33ef5e5bc2f1c39df6b67c79ec1db7c0a0a6121756aecbca55
BASE_IMAGE_DIGEST_8.3 := sha256:4c5a84abe92f318cbda41c3d07c8089846c9497ecb52c440fb7da395035b257a
BASE_IMAGE_DIGEST_8.3-r24 := sha256:6a1a32aa04d43537324fde239c813e00b31c8d70d61da199806855fdd5d446b5
BASE_IMAGE_DIGEST_8.4 := sha256:1f87a1b6b2b00cb370c6e37dffc54584e7aa5bd79b229dcce856b29dc859bdf4
BASE_IMAGE_DIGEST_8.4-r24 := sha256:423d2f511a57d986ff1c5f3d081d58a1f8f5a8f0255a9f80f0a2ed4ac185d078
BASE_IMAGE_DIGEST_8.5 := sha256:7187cc3c44f7ce2b314e540712251b9cec122d3aeb4b5209866dd0461a782c39
BASE_IMAGE_DIGEST_8.5-r24 := sha256:0004df947fd8149bc7a616fbe73de3d2ca32ab0c68e50c741b8f41c55135d302

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
