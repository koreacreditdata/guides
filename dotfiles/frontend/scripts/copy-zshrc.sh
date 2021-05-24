#!/bin/bash

# set zsh as default
chsh -s $(which zsh)

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

function get_username() {
  echo `pwd` | awk -F '/' '{print $3}'
}

function copy_zshrc() {
  filename="/tmp/kcd-init/.zshrc"

  pwd=`pwd`
  username=$(get_username $pwd)
  sed -i "" -e "s/<YOUR_NAME>/$username/" $filename

  cp $filename ~/.zshrc
}


copy_zshrc