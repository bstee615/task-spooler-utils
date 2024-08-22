#!/bin/bash

# Quit on any errors
set -e

# Make sure the scripts in `bin` are executable.
chmod +x bin/*

# Add `bin` to your `$PATH`.
if grep "# task-spooler-utils install" ~/.bashrc
then
    sed -i "s@.*# task-spooler-utils install.*@export PATH=\"\$PATH:$PWD/bin\" # task-spooler-utils install@1" ~/.bashrc
else
    echo "export PATH=\"\$PATH:$PWD/bin\" # task-spooler-utils install" >> ~/.bashrc
fi
