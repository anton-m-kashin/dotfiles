#!/bin/sh

html=$(cat)

DIGEST=$(echo "$html" | md5sum | awk '{print $1}')
FILENAME="${HOME}/.cache/mutt_files/mail-${DIGEST}.html"

echo "$html" | iconv -c --to-code=UTF8 > "${FILENAME}"

[ ! -f "$FILENAME" ] && { echo "No file ${FILENAME}."; exit 1; }

BROWSER="${BROWSER:-qutebrowser}"

"$BROWSER" "$FILENAME" > /dev/null 2>&1 &
