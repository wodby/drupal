# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:12ffe75d3155c19a8b48ee806dd88127aa34b86d15fa1bab908075d21effb573
BASE_IMAGE_DIGEST_8.2-r12 := sha256:07307b68acc24884fada73fc347cb7380a40256c6b5fa20a4546a06385eb62fd
BASE_IMAGE_DIGEST_8.3 := sha256:25424bfcac45678e8f87f4cd1954e6dc39f0860e3f7000c2795736d578bac316
BASE_IMAGE_DIGEST_8.3-r12 := sha256:5db8ca29515d06dbec8c3cb93059ec4b0c603840b3b1195594702050b293b9ce
BASE_IMAGE_DIGEST_8.4 := sha256:3fafe72c14faf8d3f95cd878b612c476090c33125bb7a9b54aef24b5aea68d5b
BASE_IMAGE_DIGEST_8.4-r12 := sha256:552ce42b6faacf314401c61a21019cf3f85db5595e2c7f5484ef0c4d30e90f7b
BASE_IMAGE_DIGEST_8.5 := sha256:ddde27a5438694b97763bf25e640ac78942ba87c0f7a82dc145f7b94e298fa72
BASE_IMAGE_DIGEST_8.5-r12 := sha256:367628b4feb02b10d05fff1fadbd6ee50303793947f46fdd7269366703692bf1

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
