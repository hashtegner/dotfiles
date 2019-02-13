# Reference: https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/dotenv

load_env_file() {
   if [[ -f $1 ]]; then
     zsh -fn $1 || echo 'dotenv: error when sourcing `$1` file' >&2

     if [[ -o a ]]; then
       source $1
     else
       set -a
       source $1
       set +a
     fi
   fi
}

source_env() {
  load_env_file '.env'
  load_env_file 'development.env'
}

add-zsh-hook chpwd source_env

source_env
