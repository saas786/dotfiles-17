#!/bin/bash

dfdir=$(pwd)
cd ~

for df in $dfdir/_*; do
    name=$(basename $df)
    ln -sf $df .${name#_*}
done
