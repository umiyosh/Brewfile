#!/usr/bin/env bash
set -eu

# node-npm
nodebrew install latest
nodebrew use latest
npm install -g coffee-script
npm install electron-prebuilt -g
npm install -g bower

