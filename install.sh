#!/bin/bash

dfdir=$(pwd)
cd ~

#
# Install prerequisites
#

# oh-my-zsh
OMZDIR=".oh-my-zsh"
if [[ -d $OMZDIR ]]; then
  echo "Creating backup of existing oh-my-zsh"
  BACKUPDIR=.oh-my-zsh.bak
  test -d $BACKUPDIR && rm -rf $BACKUPDIR
  mv $OMZDIR $BACKUPDIR
  mv .zshrc .zshrc.bak
fi
echo "Installing oh-my-zsh"
curl -L https://raw.github.com/geewiz/oh-my-zsh/master/tools/install.sh | sh

#
# Symlink dotfiles
#

echo "Creating symlinks"
for df in $dfdir/_*; do
    name=$(basename $df)
    ln -sf $df .${name#_*}
done
