alias d='docker $*'
alias d-c='docker-compose $*'
alias redisd='docker run --rm --name redis -p "6379:6379" redis:alpine'
alias postgres10d='docker run --rm --name postgres -p "5432:5432" postgres:10-alpine'
alias postgres9d='docker run --rm --name postgres -p "5432:5432" postgres:9-alpine'
alias maild='docker run --rm --name mailhog -p "8025:8025" -p "1025:1025" mailhog/mailhog:latest'

