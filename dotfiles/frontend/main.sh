#!/usr/bin/env bash

read -n 1 -r -p "Do you want to copy .gitconfig file [Y/n]: " need_gitconfig && echo
read -n 1 -r -p "Do you want to copy .vimrc file [Y/n]: " need_vimconfig && echo
read -n 1 -r -p "Do you want to copy .zshrc file [Y/n]: " need_zshrc && echo

./scripts/init.sh

if [[ $need_gitconfig =~ ^[Yy]$ ]]; then
  ./scripts/copy-gitconfig.sh
fi

if [[ $need_vimconfig =~ ^[Yy]$ ]]; then
  ./scripts/copy-vimrc.sh
fi

if [[ $need_zshrc =~ ^[Yy]$ ]]; then
  ./scripts/copy-zshrc.sh
fi

./scripts/install.sh

./scripts/clear.sh
