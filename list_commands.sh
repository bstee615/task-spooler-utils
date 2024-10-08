#!/bin/bash
# List all commands

for script in $(dirname $0)/bin/*
do
    echo "$(basename $script),$(sed -n '2s/^#\s*//p' $script)"
done | column -t -s','
