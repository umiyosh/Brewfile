#!/usr/bin/env bash

# animation off
defaults write com.apple.dock expose-animation-duration -float 0.1 ; killall Dock
chflags nohidden ~/Library/
defaults write com.apple.dock springboard-show-duration -int 0
defaults write com.apple.dock springboard-hide-duration -int 0
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool NO; killall Dock
defaults write com.apple.dock workspaces-edge-delay -float 0;killall Dock

# finder settings
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES
defaults write com.apple.Finder AppleShowAllFiles YES
killall Finder

# plist restore
if [[ ! -e $HOME/Dropbox/Mackup/.mackup.cfg ]]; then
  ln -s $HOME/dotfiles/.mackup.cfg $HOME/Dropbox/Mackup/.mackup.cfg
  mackup restore
fi

# karabiner setting
if [[ ! -d $HOME/Library/Application\ Support/KeyRemap4MacBook ]]; then
  git clone https://github.com/umiyosh/KeyRemap4MacBook-private-xml.git $HOME/Library/Application\ Support/KeyRemap4MacBook
fi

