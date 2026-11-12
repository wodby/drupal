# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:1b6823c064ed6b683ca7e0a238654a406aafae9b8775d0f6bf85eb31f0cffcc3
BASE_IMAGE_DIGEST_8.2-r19 := sha256:9a5211c7eb4d8ccaa82f2f04e5666ed020158c4484cc8fd771fdcc6c4134b2ac
BASE_IMAGE_DIGEST_8.3 := sha256:88f46d16cf645f62a34542e5e181e92294169ad0e78e6eccf51887d5886fe0e2
BASE_IMAGE_DIGEST_8.3-r19 := sha256:0552a744bfeee9841179fd116a7a679adf031b9f1dd2fee49f5a2e586af5e91b
BASE_IMAGE_DIGEST_8.4 := sha256:27e03bff223beff1947cc563925f332fd8373ae0d7f405341e626aedde0d22b3
BASE_IMAGE_DIGEST_8.4-r19 := sha256:4ca3075a9a69c71b5403578d1573e8add3859a489c9d82d0a2b28e9e90267c34
BASE_IMAGE_DIGEST_8.5 := sha256:efaa09beb11fced890bbdfdd5381c1f332009a6b3862002b8d11bddecbecbc96
BASE_IMAGE_DIGEST_8.5-r19 := sha256:d8e77cd998d1febdde5cb9d1e79385d5b34683f71086929b9e08bf9ddd613fea

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
