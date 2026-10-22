# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:1c8ad10fed447b0ceb2ad859a18891985ff36af33a10efad28c56a923df040c0
BASE_IMAGE_DIGEST_8.2-r13 := sha256:44375fea4a2b4f8d4859d6a7ffc67d8c4ee0f120d1369ee030a32e5feb3c33b5
BASE_IMAGE_DIGEST_8.3 := sha256:5800c318b45f754c5d7b98d1c15800a703eed2e2ec9a34bbbe1b184825822b8a
BASE_IMAGE_DIGEST_8.3-r13 := sha256:9eb772a1e61add0d0cfde826a77b137dc38b0300751c9371db8b220d1f1015c5
BASE_IMAGE_DIGEST_8.4 := sha256:333808f45d66dc1e3bdab1409e53dd9626726c0b5a4b846ae9e17dbc0a553634
BASE_IMAGE_DIGEST_8.4-r13 := sha256:830e7a2d0d73656bdd8e1d731b3643a17b4ddf97bff0b03c832a90fee7eb4514
BASE_IMAGE_DIGEST_8.5 := sha256:f093c8de557b80f0a9218234fc5ce3ee5875e53eeadfd56a5393069af2066aeb
BASE_IMAGE_DIGEST_8.5-r13 := sha256:f093c8de557b80f0a9218234fc5ce3ee5875e53eeadfd56a5393069af2066aeb

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
