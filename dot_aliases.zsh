alias cat='bat --theme GitHub'
alias cls='clear'
alias dot!='chezmoi apply && reload!'
alias dot='chezmoi'
alias l='exa -lh --icons'
alias ll='exa -l --icons'
alias lt='exa -l --icons --tree --level=4'
alias e='$EDITOR'
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
alias reload!='. ~/.zshrc'

# ruby
alias rc='bin/rails c'
alias rs='bin/rails s'
alias rspec='bin/rspec spec'

# docker
alias redisd='docker run -p 6379:6379  --rm redis:alpine'
alias mysqld='docker run -e 'MYSQL_ALLOW_EMPTY_PASSWORD=true' -p 3306:3306 --rm mysql:5.7'
