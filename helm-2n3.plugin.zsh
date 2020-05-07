
if (( $+commands[helm] )); then
    __HELM_COMPLETION_FILE="${ZSH_CACHE_DIR}/helm_completion"

    if [[ ! -f $__HELM_COMPLETION_FILE ]]; then
        helm completion zsh >! $__HELM_COMPLETION_FILE
    fi

    [[ -f $__HELM_COMPLETION_FILE ]] && source $__HELM_COMPLETION_FILE

    unset __HELM_COMPLETION_FILE
fi

if (( $+commands[helm2] )); then
    __HELM_COMPLETION_FILE="${ZSH_CACHE_DIR}/helm2_completion"

    if [[ ! -f $__HELM_COMPLETION_FILE ]]; then
        helm2 completion zsh >! $__HELM_COMPLETION_FILE
        sed -i 's/^#compdef helm$/#compdef helm2/' $__HELM_COMPLETION_FILE
    fi

    [[ -f $__HELM_COMPLETION_FILE ]] && source $__HELM_COMPLETION_FILE

    unset __HELM_COMPLETION_FILE
fi

if (( $+commands[helm3] )); then
    __HELM_COMPLETION_FILE="${ZSH_CACHE_DIR}/helm3_completion"

    if [[ ! -f $__HELM_COMPLETION_FILE ]]; then
        helm3 completion zsh >! $__HELM_COMPLETION_FILE
        sed -i 's/^#compdef helm$/#compdef helm3/' $__HELM_COMPLETION_FILE
    fi

    [[ -f $__HELM_COMPLETION_FILE ]] && source $__HELM_COMPLETION_FILE

    unset __HELM_COMPLETION_FILE
fi
