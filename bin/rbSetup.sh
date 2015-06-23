#!/usr/bin/env bash
set -eu

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

