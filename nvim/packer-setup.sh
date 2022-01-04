#!/bin/sh

set -e

PACKER_PATH='/Users/anton/.local/share/nvim/site/pack/packer/start'
PACKER_REPO='https://github.com/wbthomason/packer.nvim'

if [[ ! -d "$PACKER_PATH" ]]; then
	mkdir -p "$PACKER_PATH"
	git clone --depth 1 "$PACKER_REPO" "$PACKER_PATH/packer.nvim"
else
	echo "Packer already installed in ${PACKER_PATH}."
	exit 1
fi
