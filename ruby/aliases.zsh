_load_project_env() {
  if [ -f development.env ]; then
    source development.env
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
