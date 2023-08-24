#!/bin/sh

if [ -n "$NVIM_LISTEN_ADDRESS" ] && command -v nvr 1>/dev/null; then
    nvr -cc vsplit --remote-wait +'set bufhidden=wipe' "$@"
else
    nvim "$@"
fi
