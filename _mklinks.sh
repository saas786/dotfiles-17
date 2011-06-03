#!/bin/bash

dfdir=$(pwd)
cd ~

for df in $dfdir/[a-z]*; do
    ln -s $df .$(basename $df)
done
