HOMEBREW_SITE_FUNCTIONS="/opt/homebrew/share/zsh/site-functions"
[ -d "$HOMEBREW_SITE_FUNCTIONS" ] \
    && fpath=("$HOMEBREW_SITE_FUNCTIONS" $fpath)
