#!/usr/bin/env bash

# this file will be upload to gist

set -CeU

mkdir -p "${HOME}/sources"

if ! command -v git &> /dev/null; then
  echo "no git. install it by any dump way"
  exit 1
fi

# you must have git in the first place 
git clone https://gitee.com/sharefantasy/yadm.git "${HOME}/sources/yadm"

ln -s "${HOME}/sources/yadm/bin/yadm" /usr/bin/yadm

yadm clone --bootstrap https://gitee.com/sharefantasy/dotfiles.git 

# use yadm in regular package management tools. (eg. homebrew)
rm -f /usr/bin/yadm
