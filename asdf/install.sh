[ -f $HOME/.asdf/asdf.sh ] || git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.6


$HOME/.asdf/bin/asdf update
$HOME/.asdf/bin/asdf plugin-add nodejs
$HOME/.asdf/bin/asdf plugin-add ruby
$HOME/.asdf/bin/asdf plugin-add golang
$HOME/.asdf/bin/asdf plugin-add erlang
$HOME/.asdf/bin/asdf plugin-add elixir
$HOME/.asdf/bin/asdf plugin-update --all

$HOME/.asdf/bin/asdf install ruby 2.6.5
$HOME/.asdf/bin/asdf install ruby 2.7.0
$HOME/.asdf/bin/asdf global ruby 2.6.5

$HOME/.asdf/bin/asdf install golang 1.13.7
$HOME/.asdf/bin/asdf global golang 1.13.7

export KERL_CONFIGURE_OPTIONS="--without-javac --with-ssl=$(brew --prefix openssl)"
$HOME/.asdf/bin/asdf install erlang 22.2.6
$HOME/.asdf/bin/asdf install elixir 1.10.1
$HOME/.asdf/bin/asdf global erlang 22.2.6
$HOME/.asdf/bin/asdf global elixir 1.10.1

bash $HOME/.asdf/plugins/nodejs/bin/import-release-team-keyring
$HOME/.asdf/bin/asdf install nodejs 12.15.0
$HOME/.asdf/bin/asdf global nodejs 12.15.0