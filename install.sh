#!/bin/bash

set -e

if [ $(command node -v | echo $) = 0 ]; then
	echo "You must install Node >= 16.18.0 on your own before running installation."
fi

if [ $(command go version | echo $) = 0 ]; then
	echo "You must install Go on your own before running installation."
fi

go install github.com/go-delve/delve/cmd/dlv@latest

# Make sure configuration directory exists.
mkdir -p ~/.config/

# Copy through nvim configuration.
cp -rf nvim/ ~/.config/nvim/

# Install vim-plug for plugin management.
plug_vim="${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim
if [ ! -f $plug_vim ]; then
	curl -fLo --create-dirs $plug_vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
