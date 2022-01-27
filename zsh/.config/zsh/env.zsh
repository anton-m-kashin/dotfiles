export PATH=~/.local/bin:$PATH
export LC_ALL=en_US.UTF-8
export EDITOR=nvim
export VISUAL=nvim

command -v bat >/dev/null 2>&1 \
    && export MANPAGER="sh -c 'col -bx | bat -l man -p'"
