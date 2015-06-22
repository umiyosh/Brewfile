#!/usr/bin/env bash
set -eu

# install Homebrew
sudo xcodebuild -license
xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
# install Homebrew-file
brew install python
brew install rcmdnk/file/brew-file
brew file set_repo

# install Brewfile
brew file install

# Ricty for vim-powerline
cp -f $(brew --cellar ricty)/*/share/fonts/Ricty*.ttf ~/Library/Fonts/

# TODO:dotfilesのあれこれと依存している
# python-pip
pyenv virtualenv --distribute 2.7.8 sandbox278
pyenv install 2.7.8
pyenv local sandbox278
pip install -r ./pythonModules

# ruby-gem
rvm install ruby-2.0.0-p576
rvm use ruby-2.0.0-p576
gem install gemignore
gem install chef
gem install knife-solo
gem install serverspec
gem install trello_cli
gem install rspec
gem install bundler

# node-npm
nodebrew install latest
nodebrew use latest
npm install -g coffee-script
npm install electron-prebuilt -g
npm install -g bower

# perl-cpanm
curl -L https://cpanmin.us | perl - --sudo App::cpanminus
cat ./perlModules | while read module
do
  cpanm $module
done
# go-get
go get github.com/motemen/gore
go get github.com/monochromegane/mdt/...

# haskell-cabal
cabal update
cabal install cabal-install
cabal install pandoc
