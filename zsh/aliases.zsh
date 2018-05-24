alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

# Dev
alias rds='docker-compose -f ~/rd-docker.yml -p rdstation up'
alias rs='bin/rails s'
alias rc='bin/rails c'

# TMUX
alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'
