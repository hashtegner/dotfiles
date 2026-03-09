#!/bin/sh
set -e

if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

brew install \
  bat \
  bottom \
  chezmoi \
  eza \
  fzf \
  gh \
  git \
  mise \
  zoxide

brew install --cask \
  claude-code \
  font-iosevka-nerd-font \
  ghostty \
  visual-studio-code \
