#!/usr/bin/env bash

# アニメーションなどOFFにする
defaults write com.apple.dock expose-animation-duration -float 0.1 ; killall Dock
defaults write com.apple.dock workspaces-edge-delay -float 0.1; killall Dock
defaults write com.apple.finder AppleShowAllFiles -bool true
chflags nohidden ~/Library/
defaults write com.apple.dock springboard-show-duration -int 0
defaults write com.apple.dock springboard-hide-duration -int 0
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool NO; killall Dock
defaults write com.apple.dock workspaces-edge-delay -float 0;killall Dock
