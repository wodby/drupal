# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:1c8ad10fed447b0ceb2ad859a18891985ff36af33a10efad28c56a923df040c0
BASE_IMAGE_DIGEST_8.2-r12 := sha256:07307b68acc24884fada73fc347cb7380a40256c6b5fa20a4546a06385eb62fd
BASE_IMAGE_DIGEST_8.3 := sha256:5800c318b45f754c5d7b98d1c15800a703eed2e2ec9a34bbbe1b184825822b8a
BASE_IMAGE_DIGEST_8.3-r12 := sha256:5db8ca29515d06dbec8c3cb93059ec4b0c603840b3b1195594702050b293b9ce
BASE_IMAGE_DIGEST_8.4 := sha256:333808f45d66dc1e3bdab1409e53dd9626726c0b5a4b846ae9e17dbc0a553634
BASE_IMAGE_DIGEST_8.4-r12 := sha256:552ce42b6faacf314401c61a21019cf3f85db5595e2c7f5484ef0c4d30e90f7b
BASE_IMAGE_DIGEST_8.5 := sha256:f093c8de557b80f0a9218234fc5ce3ee5875e53eeadfd56a5393069af2066aeb
BASE_IMAGE_DIGEST_8.5-r12 := sha256:367628b4feb02b10d05fff1fadbd6ee50303793947f46fdd7269366703692bf1

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
