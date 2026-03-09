#!/bin/sh
set -e


sudo apt update -y && sudo apt install -y curl
sudo install -dm 755 /etc/apt/keyrings

if [ ! -f /etc/apt/sources.list.d/mise.list ]; then
  curl -fSs https://mise.jdx.dev/gpg-key.pub | sudo tee /etc/apt/keyrings/mise-archive-keyring.asc 1> /dev/null
  echo "deb [signed-by=/etc/apt/keyrings/mise-archive-keyring.asc] https://mise.jdx.dev/deb stable main" | sudo tee /etc/apt/sources.list.d/mise.list
fi

sudo apt-get install -y \
  bat \
  eza \
  fzf \
  git \
  gh \
  mise \
  xclip \
  zoxide

if [ ! -f "$HOME/.local/bin/bat" ]; then
  mkdir -p "$HOME/.local/bin"
  ln -s /usr/bin/batcat $HOME/.local/bin/bat
fi

# Iosevka Nerd Font
NERD_FONT_VERSION="3.4.0"
FONT_DIR="$HOME/.local/share/fonts/IosevkaNerdFont"
if [ ! -d "$FONT_DIR" ]; then
  mkdir -p "$FONT_DIR"
  curl -fLo /tmp/IosevkaNerdFont.tar.xz \
    "https://github.com/ryanoasis/nerd-fonts/releases/download/v${NERD_FONT_VERSION}/Iosevka.tar.xz"
  tar -xJf /tmp/IosevkaNerdFont.tar.xz -C "$FONT_DIR"
  rm /tmp/IosevkaNerdFont.tar.xz
  fc-cache -fv "$FONT_DIR"
fi
