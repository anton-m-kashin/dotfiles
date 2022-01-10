torrent-select-files() {
    torrent=$1

    test -z "$torrent" && echo "Usage: $0 </path/to/torrent/file>" && return 1
    command -v aria2c > /dev/null || (echo "aria2c not found!" && return 2)

    indexes=$(
        aria2c --show-files "$torrent" \
            | grep -E "^ *[0-9]+\|.+" \
            | fzf -m \
            | awk -F"|" '{gsub(/ /,"",$1); printf "%s%s",sep,$1; sep=","}'
           )

    test -z "$indexes" && echo "Nothing selected!" && return 3

    echo "Loading indexes: $indexes"
    aria2c --allow-overwrite=true --select-file="$indexes" "$torrent"
}

torrent-magnet-select-files() {
    magnet=$1

    test -z "$magnet" && echo "Usage: $0 <magnet://...>" && return 1
    command -v aria2c > /dev/null || (echo "aria2c not found!" && return 2)

    echo "Loading metadata..."

    torrent=$(
        aria2c --bt-save-metadata --bt-metadata-only "$magnet" \
            | grep -Eo "((\/([a-z]|[A-Z]|[0-9])+)*)\/?([a-z]|[A-Z]|[0-9])+.torrent"
           )

    test -z "$torrent" && echo "Error during metadata load!" && return 3

    echo "Saved metadata in $torrent"

    torrent-select-files "$torrent"
}

alias torrsel=torrent-select-files
alias magnsel=torrent-magnet-select-files
