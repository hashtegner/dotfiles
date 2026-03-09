#!/bin/sh
set -e

if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

brew install \
  bat \
  chezmoi \
  eza \
  fzf \
  gh \
  git \
  mise \
  zoxide

brew install --cask \
  claude-code \
  visual-studio-code \
