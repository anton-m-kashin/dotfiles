alias grep='grep --color'
if command -v exa >/dev/null 2>&1; then
    alias ls="exa"
    alias ll="exa -l -s name --group-directories-first"
    alias tree="exa -T"
else
    alias ls="ls -h"
    alias ll="ls -l"
fi
alias du="du -h"
alias df="df -h"

command -v nnn >/dev/null 2>&1 \
    && alias nnn="source ~/.config/nnn/env.sh && GUI=1 nnn"
