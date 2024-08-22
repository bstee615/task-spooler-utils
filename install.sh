#!/bin/bash

# Make sure the scripts in `bin` are executable.
chmod +x bin/*

# Add `bin` to your `$PATH`.
echo "export PATH=\"\$PATH:$PWD/bin\"" >> ~/.bashrc
