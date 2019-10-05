local tmux="$(which tmux)"
alias ta='$tmux -u attach -t'
alias tad='$tmux -u attach -d -t'
alias ts='$tmux -u new-session -s'
alias tl='$tmux -u list-sessions'
alias tksv='$tmux -u kill-server'
alias tkss='$tmux -u kill-session -t'
