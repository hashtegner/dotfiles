alias d='docker $*'
alias d-c='docker-compose $*'
alias mongod='docker run --rm --name mongo -p "27017:27017" mongo:latest'
alias redisd='docker run --rm --name redis -p "6379:6379" redis:alpine'
alias postgres10d='docker run -e POSTGRES_HOST_AUTH_METHOD=trust -v "docker_postgres10:/var/lib/postgresql/data" --rm --name postgres -p "5432:5432" postgres:10-alpine'
alias postgres9d='docker run -v "docker_postgres9:/var/lib/postgresql/data" --rm --name postgres -p "5432:5432" postgres:9-alpine'
alias postgres95d='docker run -v "docker_postgres95:/var/lib/postgresql/data" -v "$(pwd):/var/shared" --rm --name postgres -p "5432:5432" postgres:9.5-alpine'
alias maild='docker run --rm --name mailhog -p "8025:8025" -p "1025:1025" mailhog/mailhog:latest'
alias mysql57d='docker run -v "docker_mysql57:/var/lib/mysql" -e MYSQL_ALLOW_EMPTY_PASSWORD=true --rm --name mysql -p "3306:3306" mysql:5.7'
