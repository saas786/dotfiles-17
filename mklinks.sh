#!/bin/bash

dfdir=$(pwd)
cd ~

for df in $dfdir/_*; do
    ln -sf $df .${df#_*}
done
