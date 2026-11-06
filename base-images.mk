# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:f9a43fbfc97eb0263200339649757fb86470d6292f646e63ddc7e74dc3a5d4c3
BASE_IMAGE_DIGEST_8.2-r18 := sha256:f953c4ca4cc0310a1ce9b674125b0f251162d566504d0d29a72eb16e5c68e9b5
BASE_IMAGE_DIGEST_8.3 := sha256:1900a40a05a618cb585143e6b3cda1ba06ae5aab1a0d2467871049f132dee24a
BASE_IMAGE_DIGEST_8.3-r18 := sha256:0b73c0713982b0ff463babb5a2269ffa7ebd1d2bf3bcd8531ea3367acb055666
BASE_IMAGE_DIGEST_8.4 := sha256:a633c06494706a964a9aa4b3abce05580003b414f5fd26e46abb6155a4e6c50a
BASE_IMAGE_DIGEST_8.4-r18 := sha256:4a6b8ad5ca5bae0e57384d17be46a077f30a8aeee824fe8bc9c46325b8098a1e
BASE_IMAGE_DIGEST_8.5 := sha256:a0c9a835eb4ca31456efdb423921e68e95726b40806f124751f75c787f33cf16
BASE_IMAGE_DIGEST_8.5-r18 := sha256:deaf95fd8770b15a1fdb0ab20de1c61ed62e32300343560484f65661ac839674

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
