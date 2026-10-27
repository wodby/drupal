# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:8da48b2ae86edd7c943aac2414aeaa704f8eb27b7b0e10d80f87cadabb5aa10e
BASE_IMAGE_DIGEST_8.2-r15 := sha256:05ebda38f6306c162211c24c9e6f0c3e30c2913455156b8b0d81a9d841b7f6c1
BASE_IMAGE_DIGEST_8.3 := sha256:a745a42d3d9d38c15dbc9aed907fd618b672bfb1743d0857f587a090c145db9b
BASE_IMAGE_DIGEST_8.3-r15 := sha256:98a2aa134737b1b28075bc4ff940ada52bc9d7ff300a06c83d693aba7ab94757
BASE_IMAGE_DIGEST_8.4 := sha256:aa50e3979485918769b16aa7042497cf3d3b69dff7b51d1fd28e85ebf7fdc8e1
BASE_IMAGE_DIGEST_8.4-r15 := sha256:4e1f2ae4bd7a264691652b25a089a303a49c1b1bc4dcc833ce2c885b10a74040
BASE_IMAGE_DIGEST_8.5 := sha256:62b0bdac744cbbb68d7e508d3cecfa8c2e372c831ce5fc8496e941107c9cc350
BASE_IMAGE_DIGEST_8.5-r15 := sha256:7428d320607fcff6d18f59065821080e214cd549d527c0158642d98a7f494d9a

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
