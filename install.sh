#!/bin/bash

dfdir=$(pwd)
cd ~

#
# Install prerequisites
#

# oh-my-zsh
if [[ ! -d .oh-my-zsh ]]; then
  git clone https://github.com/geewiz/oh-my-zsh.git .oh-my-zsh
fi

#
# Symlink dotfiles
#

for df in $dfdir/_*; do
    name=$(basename $df)
    ln -sf $df .${name#_*}
done
