# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/drupal-php
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_8.2 := sha256:8272f237db56209948e9ba884832586040cdffd638e83ee799e5782b28ff63fd
BASE_IMAGE_DIGEST_8.2-r8 := sha256:d250118fa5e3a8a7d959603a8fdd340aca8300bbbb091bc52ee3442731ca1434
BASE_IMAGE_DIGEST_8.3 := sha256:ab52ab3cc492148a5d8b4e7fef79407d129886282f3c0437518bc7a242dfe27f
BASE_IMAGE_DIGEST_8.3-r8 := sha256:bb693845699070205fb23bf02949a6a309b29c8cef8b833fa5fa856b9af774ed
BASE_IMAGE_DIGEST_8.4 := sha256:8e7e5637f36c4a89ec46ebf569b93e0218cad72f4ef8f2ba7a3682929887271e
BASE_IMAGE_DIGEST_8.4-r8 := sha256:7ba17755181fff64d3ba67f29348ce4f469fd71e1b2e5dc8df7b5fa840a87435
BASE_IMAGE_DIGEST_8.5 := sha256:4ae3ecf732b4ee404bfe16805284aed5399ff4621d2f38afc5b39fd32068c0ee
BASE_IMAGE_DIGEST_8.5-r8 := sha256:0d2842776fb2733f11b9ab548d7b6b59c767e7ad5a90848b3fa8a0cee437b28b

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
