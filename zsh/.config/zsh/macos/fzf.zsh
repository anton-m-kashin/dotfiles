FZF_HOMEBREW_SCRIPTS_PATH="/opt/homebrew/opt/fzf/shell"
FZF_COMPLETION_FILE="completion.zsh"
FZF_KEYBINDINGS_FILE="key-bindings.zsh"

[ -f "${FZF_HOMEBREW_SCRIPTS_PATH}/${FZF_COMPLETION_FILE}" ] \
    && source "${FZF_HOMEBREW_SCRIPTS_PATH}/${FZF_COMPLETION_FILE}"
[ -f "${FZF_HOMEBREW_SCRIPTS_PATH}/${FZF_KEYBINDINGS_FILE}" ] \
    && source "${FZF_HOMEBREW_SCRIPTS_PATH}/${FZF_KEYBINDINGS_FILE}"
