#!/bin/bash
set -euf -o pipefail
sed -i -r "s~^(  'datadirectory' =>) .+,\$~\1 realpath(__dir__ . '/../data'), # updated with sed substitute~" "$(dirname "$0")/../nextcloud/config/config.php"
