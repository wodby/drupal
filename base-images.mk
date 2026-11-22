# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:9b8b6280e415277d3c41be27eedb460707cfdc7211cc6eb5e7d7297cbf16cf9a
BASE_IMAGE_DIGEST_8.2-r24 := sha256:360a62c4e61f9c33ef5e5bc2f1c39df6b67c79ec1db7c0a0a6121756aecbca55
BASE_IMAGE_DIGEST_8.3 := sha256:33cbe7a58e884c3d7c4f419ca7b338ba6a57719f59d38a4b67234683c1b4a145
BASE_IMAGE_DIGEST_8.3-r24 := sha256:6a1a32aa04d43537324fde239c813e00b31c8d70d61da199806855fdd5d446b5
BASE_IMAGE_DIGEST_8.4 := sha256:74490e1d73a648737d2c7942bc2b4cdfecc6f6642c743c54d12703dc866cfaad
BASE_IMAGE_DIGEST_8.4-r24 := sha256:423d2f511a57d986ff1c5f3d081d58a1f8f5a8f0255a9f80f0a2ed4ac185d078
BASE_IMAGE_DIGEST_8.5 := sha256:a836e95782bcdb8eb3822f84706d3d2b25ea52a2866bea95a90857e896bfa318
BASE_IMAGE_DIGEST_8.5-r24 := sha256:0004df947fd8149bc7a616fbe73de3d2ca32ab0c68e50c741b8f41c55135d302

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
