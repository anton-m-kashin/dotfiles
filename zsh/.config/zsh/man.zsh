command -v bat >/dev/null 2>&1 \
    && export MANPAGER="sh -c 'col -bx | bat -l man -p'"

help() {
    "$@" --help 2>&1 | bat --plain --language=help
}
