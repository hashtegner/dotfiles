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
