#!/bin/bash

if ! [ -n `which brew` ]
then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


if ! [ -n `which nvm` ]
then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
  source ~/.nvm/nvm.sh
  nvm install node
fi

brew bundle --file=/tmp/kcd-init/init.Brewfile
