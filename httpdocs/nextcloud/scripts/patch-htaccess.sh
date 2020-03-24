#!/bin/bash
set -euf -o pipefail
file="$(dirname "$0")/../nextcloud/.htaccess"
sed -i -r 's~^(  RewriteRule . index.php.+)$~  RewriteCond %{REQUEST_FILENAME} !/pico.php\n\1~' "$file"
sed -i -r 's~^(  Options -MultiViews)$~\1\n  RewriteRule ^(sites($|/[^/]+))$ $1/ [L,R]\n  RewriteRule ^sites/ pico.php [L]~' "$file"
echo -e "\n# File patched by sed substitute script.\n# Added lines: pico.php and sites rules.\n" >> "$file"
