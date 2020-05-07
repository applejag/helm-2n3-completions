
if (( $+commands[${HELM_2_BIN:=helm2}] )); then
    __HELM_COMPLETION_FILE="${ZSH_CACHE_DIR}/helm2_completion"

    if [[ ! -f $__HELM_COMPLETION_FILE ]]; then
        $HELM_2_BIN completion zsh >! $__HELM_COMPLETION_FILE
        sed -i \
          -e "s/^#compdef helm\$/#compdef $HELM_2_BIN/"  \
          -e "s/ -F __start_helm helm\$/ -F __start_helm $HELM_2_BIN/" \
          -e 's/_helm/_helm2/' \
          -e 's/helm_/helm2_/' \
          -e 's/"helm"/"helm2"/' \
          $__HELM_COMPLETION_FILE
    fi

    [[ -f $__HELM_COMPLETION_FILE ]] && source $__HELM_COMPLETION_FILE

    unset __HELM_COMPLETION_FILE
fi

if (( $+commands[${HELM_3_BIN:=helm3}] )); then
    __HELM_COMPLETION_FILE="${ZSH_CACHE_DIR}/helm3_completion"

    if [[ ! -f $__HELM_COMPLETION_FILE ]]; then
        $HELM_3_BIN completion zsh >! $__HELM_COMPLETION_FILE
        sed -i \
          -e "s/^#compdef helm\$/#compdef $HELM_3_BIN/" \
          -e 's/_helm/_helm3/' \
          -e 's/helm_/helm3_/' \
          -e 's/"helm"/"helm3"/' \
          $__HELM_COMPLETION_FILE
    fi

    [[ -f $__HELM_COMPLETION_FILE ]] && source $__HELM_COMPLETION_FILE

    unset __HELM_COMPLETION_FILE
fi
