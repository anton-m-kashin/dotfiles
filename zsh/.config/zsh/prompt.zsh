autoload -Uz vcs_info
autoload -U add-zsh-hook

setopt prompt_subst

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' check-for-stages-changes true
zstyle ':vcs_info:*' get-revision true

FORCE_RUN_VCS_INFO=1

zstyle ':vcs_info:*+pre-get-data:*' hooks pre-get-data

+vi-pre-get-data() {
    # Only Git and Mercurial support and need caching. Abort if any other
    # VCS is used.
    [[ "$vcs" != git && "$vcs" != hg ]] && return

    # If the shell just started up or we changed directories (or for other
    # custom reasons) we must run vcs_info.
    if [[ -n $FORCE_RUN_VCS_INFO ]]; then
        FORCE_RUN_VCS_INFO=
        return
    fi

    # If we got to this point, running vcs_info was not forced, so now we
    # default to not running it and selectively choose when we want to run
    # it (ret=0 means run it, ret=1 means don't).
    ret=1
    # If a git/hg command was run then run vcs_info as the status might
    # need to be updated.
    case "$(fc -ln $(($HISTCMD-1)))" in
        git*)
            ret=0
            ;;
        hg*)
            ret=0
            ;;
    esac
}

# Call vcs_info as precmd before every prompt.
prompt_precmd() {
    vcs_info
}
add-zsh-hook precmd prompt_precmd

prompt_chpwd() {
    FORCE_RUN_VCS_INFO=1
}
add-zsh-hook chpwd prompt_chpwd

zstyle ':vcs_info:*' unstagedstr '!'
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:*' formats "%b%u%c"
zstyle ':vcs_info:git:*' actionformats '%b -- %a'

git_prompt() {
    if [[ -n "$vcs_info_msg_0_" ]]; then
        echo "%F{yellow}[$vcs_info_msg_0_]%F{reset} "
    fi
}

ssh_prompt() {
    if [[ ! -z $SSH_CLIENT ]]; then
        echo "%F{green}%m%F{reset} "
    fi
}

dir_prompt() {
    echo "%F{grey}%1~%F{reset} "
}

jobs_prompt() {
    echo "%F{red}%1(j.(%j) .)%F{reset}"
}

input_prompt() {
    echo "%F{grey}>%F{reset} "
}

PS1='$(ssh_prompt)$(dir_prompt)$(git_prompt)$(jobs_prompt)$(input_prompt)'
