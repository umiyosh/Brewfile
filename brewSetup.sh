#!/usr/bin/env bash

# install Homebrew
sudo xcodebuild -license
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
# install Homebrew-file
brew install python
brew install rcmdnk/file/brew-file
brew file set_repo

# install Brewfile
brew file install

