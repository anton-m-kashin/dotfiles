export ZDOTDIR=~/.config/zsh

ENV_CONFIG="$ZDOTDIR/env.zsh"
[[ -f "$ENV_CONFIG" ]] && source "$ENV_CONFIG"
