#!/bin/bash

set -e

if [ $(command node -v | echo $) = 0 ]; then
	echo "You must install Node >= 16.18.0 on your own before running installation."
fi

# Make sure configuration directory exists.
mkdir -p ~/.config/

# Copy through nvim configuration.
cp -rf nvim/ ~/.config/nvim/

