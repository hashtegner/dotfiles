_load_project_env() {
  if [ -f development.env ]; then
    cat development.env | while read line; do
      export $line
    done
  fi
}

rs() {
  _load_project_env

  ./bin/rails s
}

rc() {
  _load_project_env

  ./bin/rails c
}
