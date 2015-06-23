#!/usr/bin/env bash
set -eu

# python-pip
pyenv virtualenv --distribute 2.7.8 sandbox278
pyenv install 2.7.8
pyenv local sandbox278
pip install -r ./pythonModules

