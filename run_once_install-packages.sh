#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install autojump
brew install bat
brew install chezmoi
brew install fzf
brew install git
brew install zsh

brew install 1password --cask
brew install alfred --cask
brew install appcleaner --cask
brew install iterm2 --cask
brew install datagrip --cask
brew install spotify --cask
brew install the-unarchiver --cask
brew install visual-studio-code --cask

brew install font-hasklig --cask