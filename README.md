Dotfiles for my unix environment setup

This scheme assumes the destination machine is running zsh and oh-my-zsh


## Setup

At some point, I'll make an automated way to do this, but I don't use it
often enough now to bother.

#### Prerequisits

neovim (brew)

git (brew)

oh-my-zsh (website)

rbenv,ruby,solargraph (brew)

node,npm (brew)

typescript-language-server (npm)

rustup,rust (website)

rls  (`rustup component add rls rust-analysis rust-src`)

reattach-to-user-namespace (brew)

#### Link each of the dotfiles to your home directory

ln -s $(pwd)/dot.zshrc ~/.zshrc

ln -s $(pwd)/dot.vim ~/.vim

ln -s $(pwd)/dot.vimrc ~/.vimrc

ln -s $(pwd)/dot.tmux.conf ~/.tmux.conf

I need a way to specify the home directory for cases like Windows. 

#### Vim setup

vim +PluginInstall +qall


