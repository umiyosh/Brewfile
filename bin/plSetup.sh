#!/usr/bin/env bash
set -eu

# perl-cpanm
curl -L https://cpanmin.us | perl - --sudo App::cpanminus
cat ./perlModules | while read module
do
  cpanm $module
done
