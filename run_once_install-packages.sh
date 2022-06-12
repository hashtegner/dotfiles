#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install autojump
brew install bat
brew install chezmoi
brew install exa
brew install fzf
brew install git
brew install hub
brew install mas
brew install neovim
brew install zsh

brew tap homebrew/cask-versions
brew install 1password --cask
brew install alfred --cask
brew install appcleaner --cask
brew install datagrip --cask
brew install docker --cask
brew install firefox-developer-edition --cask
brew install flutter --cask
brew install google-cloud-sdk --cask
brew install intellij-idea-ce --cask
brew install iterm2 --cask
brew install paw --cask
brew install rectangle --cask
brew install safari-technology-preview --cask
brew install slack-beta --cask
brew install spotify --cask
brew install the-unarchiver --cask
brew install visual-studio-code --cask
brew install zoom --cask

brew tap homebrew/cask-drivers
brew install logitech-g-hub --cask
brew install logitech-camera-settings --cask

brew tap homebrew/cask-fonts
brew install font-hasklug-nerd-font --cask

mas install 1352778147 # Bitwarden
mas install 1462114288 # Grammarly for Safari
mas install 1529448980 # Reeder 5
mas install 1429033973 # RunCat
mas install 1284863847 # Unsplash Wallpapers
mas install 497799835  # Xcode
