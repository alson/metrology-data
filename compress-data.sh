#!/bin/sh

ls raw/*.csv | while read f; do
    echo "$f"
    if [ "$(basename $f)" = "thp_log.csv" ]; then
        continue
    fi
    bzip2 -c $f > $(basename $f).bz2
done
