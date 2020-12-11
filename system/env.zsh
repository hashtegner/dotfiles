export EDITOR='nvim'
export VISUAL='$EDITOR'
export GIT_EDITOR='$EDITOR -w'
export GPG_TTY=$(tty)

alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
alias e="$EDITOR"
