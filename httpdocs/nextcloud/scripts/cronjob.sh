#!/bin/bash
set -euf -o pipefail
cd "$(dirname "$0")"

../wrapper/cron \
&& exit 0; exit 1
