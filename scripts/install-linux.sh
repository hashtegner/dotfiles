#!/bin/sh
set -e

sudo apt-get update
sudo apt-get install -y \
  bat \
  curl \
  eza \
  fzf \
  git \
  gh \
  xclip \
  zoxide

# mise
curl https://mise.run | sh

mkdir -p "$HOME/.local/bin"

ln -s /usr/bin/batcat $HOME/.local/bin/bat
