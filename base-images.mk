# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:489729cc7d5c71b81397043ddfac010f3a11afa5e48728170068d10c7b3cfb8c
BASE_IMAGE_DIGEST_8.2-r18 := sha256:f953c4ca4cc0310a1ce9b674125b0f251162d566504d0d29a72eb16e5c68e9b5
BASE_IMAGE_DIGEST_8.3 := sha256:6ef5f5cdf00ce02eb2d8262e719585d11578941635b198daf4e198bdd42ebac5
BASE_IMAGE_DIGEST_8.3-r18 := sha256:0b73c0713982b0ff463babb5a2269ffa7ebd1d2bf3bcd8531ea3367acb055666
BASE_IMAGE_DIGEST_8.4 := sha256:88a59c5934456964cc2cd30f3929be2b4c2fc682092a766805e869965baafdb2
BASE_IMAGE_DIGEST_8.4-r18 := sha256:4a6b8ad5ca5bae0e57384d17be46a077f30a8aeee824fe8bc9c46325b8098a1e
BASE_IMAGE_DIGEST_8.5 := sha256:2137488c4c0517b639ac54fa4066dd8834cbd82d49424fcb579fb2c6a029975e
BASE_IMAGE_DIGEST_8.5-r18 := sha256:deaf95fd8770b15a1fdb0ab20de1c61ed62e32300343560484f65661ac839674

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
