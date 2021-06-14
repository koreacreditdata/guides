#!/bin/bash

function get_name() {
  echo $1 | sed "s/^\(.*\)@.*$/\1/"
}

read -p "[Input] Enter your email: " email

filename="/tmp/kcd-init/.gitconfig"
name=$(get_name $email)

if [[ $email != "" ]]; then
  sed -i "" -e "s/<YOUR_EMAIL>/$email/" $filename
  sed -i "" -e "s/<YOUR_NAME>/$name/" $filename
fi

cp $filename ~/.gitconfig
