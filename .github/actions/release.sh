#!/usr/bin/env bash

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
    # e.g. tag 1.2.3
    stability_tag="${GITHUB_REF##*/}"
    # 11.2-8.4-1.2.3
    tags=("${minor_tag}-${PHP_VER}-${stability_tag}")
    if [[ -n "${LATEST_MAJOR}" ]]; then
      # 11-8.4-1.2.3
      tags+=("${major_tag}-${PHP_VER}-${stability_tag}")
    fi
    if [[ -n "${LATEST_MAJOR_PHP}" ]]; then
      # 11.2-8-1.2.3
      tags+=("${minor_tag}-${PHP_VER%.*}-${stability_tag}")
      if [[ -n "${LATEST_MAJOR}" ]]; then
        # 11-8-1.2.3
        tags+=("${major_tag}-${PHP_VER%.*}-${stability_tag}")
      fi
    fi
    if [[ -n "${LATEST_PHP}" ]]; then
      # 11.2-1.2.3
      tags+=("${minor_tag}-${stability_tag}")
      if [[ -n "${LATEST_MAJOR}" ]]; then
        # 11-1.2.3
        tags+=("${major_tag}-${stability_tag}")
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