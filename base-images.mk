# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:f953c4ca4cc0310a1ce9b674125b0f251162d566504d0d29a72eb16e5c68e9b5
BASE_IMAGE_DIGEST_8.2-r17 := sha256:1014be8714e2dcb4cbca83e369305e6802d461c74725e8f305fc267f42dd90f1
BASE_IMAGE_DIGEST_8.3 := sha256:0b73c0713982b0ff463babb5a2269ffa7ebd1d2bf3bcd8531ea3367acb055666
BASE_IMAGE_DIGEST_8.3-r17 := sha256:256d4d42360572452bde093ef890852fea5bf302f4e6782f643f4a0a13de82aa
BASE_IMAGE_DIGEST_8.4 := sha256:4a6b8ad5ca5bae0e57384d17be46a077f30a8aeee824fe8bc9c46325b8098a1e
BASE_IMAGE_DIGEST_8.4-r17 := sha256:29916425f88a8645293d0ec40355667def4341121eb263ba2da746b850cc4d76
BASE_IMAGE_DIGEST_8.5 := sha256:deaf95fd8770b15a1fdb0ab20de1c61ed62e32300343560484f65661ac839674
BASE_IMAGE_DIGEST_8.5-r17 := sha256:95533bdcc5e5ded6290053fc3a4046a1a018d408d3b4bffa57abf55c54e371fb

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
