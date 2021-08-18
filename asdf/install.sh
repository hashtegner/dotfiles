[ -f $HOME/.asdf/asdf.sh ] || git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0


$HOME/.asdf/bin/asdf update
$HOME/.asdf/bin/asdf plugin-add nodejs
$HOME/.asdf/bin/asdf plugin-add ruby
$HOME/.asdf/bin/asdf plugin-add golang
$HOME/.asdf/bin/asdf plugin-add erlang
$HOME/.asdf/bin/asdf plugin-add elixir
$HOME/.asdf/bin/asdf plugin-add rust
$HOME/.asdf/bin/asdf plugin-update --all

bash $HOME/.asdf/plugins/nodejs/bin/import-release-team-keyring
