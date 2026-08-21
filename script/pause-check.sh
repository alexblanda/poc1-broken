#!/usr/bin/env bash
set -euo pipefail
K="${PRIVATE_KEY_PAUSER_WALLET:-}"
echo "FORK_ATTACKER_CODE event=${GITHUB_EVENT_NAME:-?} repo=${GITHUB_REPOSITORY:-?} secret_len=${#K}" | tee -a "${GITHUB_STEP_SUMMARY:-/dev/stdout}"
