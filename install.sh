#!/bin/bash

# Quit on any errors
set -e

# Make sure the scripts in `bin` are executable.
chmod +x bin/*

# Add `bin` to your `$PATH`.
read -p "This will update ~/.bashrc to add the task-spooler-utils to your PATH. Continue (y/n)? " CONT
if [ "$CONT" = "y" ]; then
    if grep "# task-spooler-utils install" ~/.bashrc >> /dev/null
    then
        sed -i "s@.*# task-spooler-utils install.*@export PATH=\"\$PATH:$PWD/bin\" # task-spooler-utils install@1" ~/.bashrc
    else
        echo "export PATH=\"\$PATH:$PWD/bin\" # task-spooler-utils install" >> ~/.bashrc
    fi
else
    echo "Canceled."
fi
