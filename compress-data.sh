#!/bin/sh

ls raw/*.csv | while read f; do
    echo "$f"
    bzip2 -c $f > $(basename $f).bz2
done
