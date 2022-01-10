if test -n "$NVIM_LISTEN_ADDRESS" && command -v nvr 1>/dev/null; then
    export VISUAL="nvr -cc vsplit --remote-wait +'set bufhidden=wipe' $@"
    alias nvim="nvr -cc vsplit $@"
else
    export VISUAL=nvim
fi
