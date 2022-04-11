#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


brew install autojump
brew install bat
brew install chezmoi
brew install exa
brew install fzf
brew install git
brew install mas
brew install zsh

brew install 1password --cask
brew install alfred --cask
brew install appcleaner --cask
brew install datagrip --cask
brew install docker --cask
brew install intellij-idea-ce --cask
brew install iterm2 --cask
brew install paw --cask
brew install rectangle --cask
brew install slack-beta --cask
brew install spotify --cask
brew install the-unarchiver --cask
brew install visual-studio-code --cask

brew tap homebrew/cask-fonts
brew install font-firacode-nerd-font --cask

mas install 1352778147 # Bitwarden
mas install 1462114288 # Grammarly for Safari
mas install 1529448980 # Reeder 5
mas install 1429033973 # RunCat
mas install 1284863847 # Unsplash Wallpapers
mas install 497799835  # Xcode
