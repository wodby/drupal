# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:5f529cdd2c2d90fa315a272f278621dd0947140a7ec48217ce214865dc05519d
BASE_IMAGE_DIGEST_8.2-r24 := sha256:360a62c4e61f9c33ef5e5bc2f1c39df6b67c79ec1db7c0a0a6121756aecbca55
BASE_IMAGE_DIGEST_8.3 := sha256:97127cd2d5c5bbc6dec63a4abaf6fe5ba6a4935c1d772daeb5af3d55a49861bd
BASE_IMAGE_DIGEST_8.3-r24 := sha256:6a1a32aa04d43537324fde239c813e00b31c8d70d61da199806855fdd5d446b5
BASE_IMAGE_DIGEST_8.4 := sha256:c7f6b406515953dd13b40c8f0b294566ccfd26a1ca7c470d2217ad11534e017a
BASE_IMAGE_DIGEST_8.4-r24 := sha256:423d2f511a57d986ff1c5f3d081d58a1f8f5a8f0255a9f80f0a2ed4ac185d078
BASE_IMAGE_DIGEST_8.5 := sha256:0410377b9ccf2fe504d1e8003a707e2dddaa6928eae00385871e50795b294673
BASE_IMAGE_DIGEST_8.5-r24 := sha256:0004df947fd8149bc7a616fbe73de3d2ca32ab0c68e50c741b8f41c55135d302

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
