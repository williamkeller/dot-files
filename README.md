Dotfiles for my unix environment setup

## Setup

At some point, I'll make an automated way to do this, but I don't use it
often enough now to bother.

#### Link each of the dotfiles to your home directory

ln -s $(pwd)/dot.bash_profile ~/.bash_profile

ln -s $(pwd)/dot.bashrc ~/.bashrc

ln -s $(pwd)/dot.bash_modules ~/.bash_modules

ln -s $(pwd)/dot.tmux.conf ~/.tmux.conf

ln -s $(pwd)/dot.vim ~/.vim

ln -s $(pwd)/dot.vimrc ~/.vimrc

I need a way to specify the home directory for cases like Windows. 

#### Vim setup

vim +PluginInstall +qall
