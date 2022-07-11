fpath=("${ZDOTDIR}/completions" $fpath)
autoload -U select-word-style
autoload -Uz compinit && compinit # autocomplete
autoload -U edit-command-line
zmodload -i zsh/complist

setopt autocd # enter path without `cd`
setopt interactive_comments # comments right in shell
setopt prompt_subst
setopt append_history
setopt auto_list # automatically list choices on ambiguous completion
setopt auto_menu # automatically use menu completion
setopt always_to_end # move cursor to end if word had one match
setopt complete_in_word
setopt print_exit_value # print status code if non-zero
setopt extended_history # commands beginning and duration in history
setopt inc_append_history
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_verify

HISTFILE=$ZDOTDIR/.zsh_history
HISTSIZE=9999
SAVEHIST=9999

select-word-style bash
_comp_options+=(globdots) # hidden files in autocomplete

zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completion

source "${ZDOTDIR}/aliases.zsh"
source "${ZDOTDIR}/prompt.zsh"
source "${ZDOTDIR}/platform.zsh"
source "${ZDOTDIR}/torrsel.zsh"
source "${ZDOTDIR}/nvim.zsh"
source "${ZDOTDIR}/mpcenv.zsh"

bindkey -e # emacs keybindings

zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line

[ -f "$HOME/.cargo/env" ] \
    && source "$HOME/.cargo/env"

command -v fasd > /dev/null \
    && eval "$(fasd --init auto)"

FZF_COMPLETION_FILE="/usr/share/fzf/completion.zsh"
[ -f "$FZF_COMPLETION_FILE" ] \
    && source "$FZF_COMPLETION_FILE"
FZF_KEYBINDINGS_FILE="/usr/share/fzf/key-bindings.zsh"
[ -f "$FZF_KEYBINDINGS_FILE" ] \
    && source "$FZF_KEYBINDINGS_FILE"
