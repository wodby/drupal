# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:07307b68acc24884fada73fc347cb7380a40256c6b5fa20a4546a06385eb62fd
BASE_IMAGE_DIGEST_8.2-r11 := sha256:e2bc94c1289b1b5d0a42564cf550ec1c7b209f4e2a9ddfcafe3f99ff00c116fa
BASE_IMAGE_DIGEST_8.3 := sha256:5db8ca29515d06dbec8c3cb93059ec4b0c603840b3b1195594702050b293b9ce
BASE_IMAGE_DIGEST_8.3-r11 := sha256:aef5cdc0a8d6f695df73099604c164fd7434685a09b3500089fa1c589549e000
BASE_IMAGE_DIGEST_8.4 := sha256:552ce42b6faacf314401c61a21019cf3f85db5595e2c7f5484ef0c4d30e90f7b
BASE_IMAGE_DIGEST_8.4-r11 := sha256:96fad33f78f3e887cb8001851a036725bd38118c7a8e3cb8740c3823322ff24b
BASE_IMAGE_DIGEST_8.5 := sha256:367628b4feb02b10d05fff1fadbd6ee50303793947f46fdd7269366703692bf1
BASE_IMAGE_DIGEST_8.5-r11 := sha256:1038da3fb1d0a7aed7058aa927c46e9020d3d0b45d61c90945363b3fa6e3da8f

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
