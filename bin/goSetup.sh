#!/usr/bin/env bash
set -eu

# go-get
# TODO: 開発環境回りsetup
cat ./goPackages | while read package
do
  go get $package
done
