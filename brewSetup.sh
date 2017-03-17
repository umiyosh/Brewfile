#!/usr/bin/env bash

# install Homebrew
sudo xcodebuild -license
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
# install Homebrew-file
brew install python
brew install rcmdnk/file/brew-file
brew file set_repo

# install Brewfile
brew file install

# Ricty for vim-powerline
if [[ ! -e ~/Library/Fonts/Ricty-Regular-Powerline.ttf ]]; then
  cp -f "$(brew --cellar ricty)/*/share/fonts/Ricty*.ttf" ~/Library/Fonts/
fi
