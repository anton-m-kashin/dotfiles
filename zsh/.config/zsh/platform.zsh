case "$(uname)" in
    "Linux")
        for file in "$ZDOTDIR"/linux/*.zsh; do
            source "$file"
        done
        ;;
esac
