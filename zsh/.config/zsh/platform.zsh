source_dir() {
	PLATFORM_SCRIPTS_PATH="${ZDOTDIR}/$1"
	for file in "$PLATFORM_SCRIPTS_PATH"/*.zsh; do
	    source "$file"
	done
}

case "$(uname)" in
    "Linux")
	source_dir linux
        ;;
    "Darwin")
        source_dir macos
	;;
esac
