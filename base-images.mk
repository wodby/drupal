# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:ad4971fd1831d054726b0a53991381c5c5050bf564e2a063306f1086e676305e
BASE_IMAGE_DIGEST_8.2-r19 := sha256:9a5211c7eb4d8ccaa82f2f04e5666ed020158c4484cc8fd771fdcc6c4134b2ac
BASE_IMAGE_DIGEST_8.3 := sha256:e6a4b30298454ccec801016442583a1c3e0ce5afcc971b5c3dfe91906b635d1b
BASE_IMAGE_DIGEST_8.3-r19 := sha256:0552a744bfeee9841179fd116a7a679adf031b9f1dd2fee49f5a2e586af5e91b
BASE_IMAGE_DIGEST_8.4 := sha256:1a946be396b6ea48e1d7ac5b78d350f8b7388f8e38d1c3bd2f9ea0240ead1f8d
BASE_IMAGE_DIGEST_8.4-r19 := sha256:4ca3075a9a69c71b5403578d1573e8add3859a489c9d82d0a2b28e9e90267c34
BASE_IMAGE_DIGEST_8.5 := sha256:c112126f9311c4914be007381d6766857ed1e5fcf4730a81e506bd4a01ffda86
BASE_IMAGE_DIGEST_8.5-r19 := sha256:d8e77cd998d1febdde5cb9d1e79385d5b34683f71086929b9e08bf9ddd613fea

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
