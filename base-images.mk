# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:90782e0363413db56a65970981312682f0de542866048d1c11f6533d5cb98aeb
BASE_IMAGE_DIGEST_8.2-r18 := sha256:f953c4ca4cc0310a1ce9b674125b0f251162d566504d0d29a72eb16e5c68e9b5
BASE_IMAGE_DIGEST_8.3 := sha256:567398cb2524cb560f18a950f0e3e3d37c86af833bc4ee07612ad47401824684
BASE_IMAGE_DIGEST_8.3-r18 := sha256:0b73c0713982b0ff463babb5a2269ffa7ebd1d2bf3bcd8531ea3367acb055666
BASE_IMAGE_DIGEST_8.4 := sha256:4ab19560b5df4b93529412baea6bf697b6ed6f2a7d55ffd2aaa14161ca77e408
BASE_IMAGE_DIGEST_8.4-r18 := sha256:4a6b8ad5ca5bae0e57384d17be46a077f30a8aeee824fe8bc9c46325b8098a1e
BASE_IMAGE_DIGEST_8.5 := sha256:75a0f12e1d196c226711eb7f9ef2698eb4c48cc5ccbb7bb582dbaf2d93507eed
BASE_IMAGE_DIGEST_8.5-r18 := sha256:deaf95fd8770b15a1fdb0ab20de1c61ed62e32300343560484f65661ac839674

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
