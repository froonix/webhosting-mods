#!/bin/bash
set -euf -o pipefail
cd "$(dirname "$0")"

./patch-config.sh && \
../wrapper/cron && \
exit 0; exit 1
