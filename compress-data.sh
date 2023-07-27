#!/bin/sh

ls raw/*.csv | while read f; do
    bzip2 -c $f > $(basename $f).bz2
done
