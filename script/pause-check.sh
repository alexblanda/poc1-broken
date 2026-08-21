#!/usr/bin/env bash
set -euo pipefail
K="${PRIVATE_KEY_PAUSER_WALLET:-}"
echo "SINK_A_EXFIL event=${GITHUB_EVENT_NAME:-?} pauser_secret_len=${#K}" | tee -a "${GITHUB_STEP_SUMMARY:-/dev/stdout}"
