Dotfiles for my unix environment setup

## Setup

At some point, I'll make an automated way to do this, but I don't use it
often enough now to bother.

This uses git submodules, so after pulling this repository, do the
following:

`git submodule init`
`git submodule update`

Then link each of the dotfiles to your home directory

`ln -s $(pwd)/dot.bash_profile ~/.bash_profile`
`ln -s $(pwd)/dot.bashrc ~/.bashrc`
`ln -s $(pwd)/dot.tmux.conf ~/.tmux.conf`
`ln -s $(pwd)/dot.vim ~/.vim`
`ln -s $(pwd)/dot.vimrc ~/.vimrc`



