#!/usr/bin/env bash

# Version aliases identify published releases; only primary tags publish images.
if [[ "${GITHUB_REF:-}" =~ ^refs/tags/.+-r[0-9]+$ ]]; then
    exit 0
fi

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

if [[ "${GITHUB_REF}" == refs/heads/master || "${GITHUB_REF}" == refs/tags/* ]]; then
  minor_ver="${DRUPAL_VER%.*}"
  minor_tag="${minor_ver}"
  major_tag="${minor_ver%.*}"

  # e.g. drupal version 11.2.8 and php 8.4
  # 11.2-8.4
  tags=("${minor_tag}-${PHP_VER}")

  # 11.2
  if [[ -n "${LATEST_PHP}" ]]; then
    tags+=("${minor_tag}")
  fi

  if [[ -n "${LATEST_MAJOR}" ]]; then
    # 11-8.4
    tags+=("${major_tag}-${PHP_VER}")
    if [[ -n "${LATEST_PHP}" ]]; then
      # 11
      tags+=("${major_tag}")
    fi
  fi

  if [[ -n "${LATEST_MAJOR_PHP}" ]]; then
    # 11.2-8
    tags+=("${minor_tag}-${PHP_VER%.*}")
    if [[ -n "${LATEST_MAJOR}" ]]; then
      # 11-8
      tags+=("${major_tag}-${PHP_VER%.*}")      
    fi
  fi

  if [[ "${GITHUB_REF}" == refs/tags/* ]]; then
    # e.g. tag r23
    image_revision="${GITHUB_REF##*/}"
    # 11.2-8.4-r23
    tags=("${minor_tag}-${PHP_VER}-${image_revision}")
    if [[ -n "${LATEST_MAJOR}" ]]; then
      # 11-8.4-r23
      tags+=("${major_tag}-${PHP_VER}-${image_revision}")
    fi
    if [[ -n "${LATEST_MAJOR_PHP}" ]]; then
      # 11.2-8-r23
      tags+=("${minor_tag}-${PHP_VER%.*}-${image_revision}")
      if [[ -n "${LATEST_MAJOR}" ]]; then
        # 11-8-r23
        tags+=("${major_tag}-${PHP_VER%.*}-${image_revision}")
      fi
    fi
    if [[ -n "${LATEST_PHP}" ]]; then
      # 11.2-r23
      tags+=("${minor_tag}-${image_revision}")
      if [[ -n "${LATEST_MAJOR}" ]]; then
        # 11-r23
        tags+=("${major_tag}-${image_revision}")
      fi      
    fi        
  else          
    if [[ -n "${LATEST}" ]]; then
      tags+=("latest")
    fi
  fi

  for tag in "${tags[@]}"; do
    make buildx-imagetools-create IMAGETOOLS_TAG=${tag}
  done
fi