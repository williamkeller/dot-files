# Installing this nvim setup

## Install nvim 
`brew install nvim`

## Install packer
From https://github.com/wbthomason/packer.nvim
`git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim`

## Install bundles
Navigate to nvim/lua/arda/packer.lua
Source the file ( `:so` )
Run `:PackerSync`
Treesitter may fail the first time, run PackerSync again
