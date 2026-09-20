# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:4f1108ecbffcec52447ef754edc86817d7e4f6600b2ff36d6405b5cf64b5afc9
BASE_IMAGE_DIGEST_8.2-4.83.2 := sha256:eff53f836cb4417295e9df004852828710594033331b1553d3df2705e52a4684
BASE_IMAGE_DIGEST_8.3 := sha256:56d3bd9247f0f6a651024cdb999a24f47d4fcc8d208b4ba9c2cfb02eb77a6d9d
BASE_IMAGE_DIGEST_8.3-4.83.2 := sha256:a0efae787dad173d5d332a9a3ca29dd910d5c36c650347f8a2d20f8128fb9cc4
BASE_IMAGE_DIGEST_8.4 := sha256:1f0c0d2600f197bd52592ae479dda3422d1af95ee02107b00d8e5a0549681ce8
BASE_IMAGE_DIGEST_8.4-4.83.2 := sha256:f6e0de81ac72ce8aba55be5981f7fd2fd757b3ecd2dfd01ff4750f9fdcbee057
BASE_IMAGE_DIGEST_8.5 := sha256:9722769cdd688aeb41dafae85424a50df629e35d5ce8beeaadc67ae42e1fa275
BASE_IMAGE_DIGEST_8.5-4.83.2 := sha256:f10a58e26294ea803e497a0dc369e115f7d7644ab07911064c5b82fc1a574a34

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
