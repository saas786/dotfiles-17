# Emacs mode
bindkey -e

# handy keybindings
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^K" kill-line
bindkey "^R" history-incremental-search-backward
bindkey "^P" history-search-backward
bindkey "^Y" accept-and-hold
bindkey "^N" insert-last-word

# Search history with cursor up/down
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
