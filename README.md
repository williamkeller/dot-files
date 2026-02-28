Dotfiles for my unix environment setup

This scheme assumes the destination machine is running zsh and oh-my-zsh


## Setup

At some point, I'll make an automated way to do this, but I don't use it
often enough now to bother.

#### Submodules

This repo uses submodules, so after clone this, run
`git submodule update --init`

Occasionall run `git submodule update` to update the submodules.


#### Prerequisits

neovim (brew)

git (brew)

ghostty (brew)

starship (brew)

rbenv, ruby, ruby_lsp (brew)

node, npm (brew)

typescript-language-server (npm)

rustup, rust (website)

rls  (`rustup component add rls rust-analysis rust-src`)

reattach-to-user-namespace (brew)

#### Link each of the dotfiles to your home directory

ln -s $(pwd)/ghostty ~/.config/ghostty

ln -s $(pwd)/dot.zshrc ~/.zshrc

ln -s $(pwd)/nvim ~/.config/nvim

ln -s $(pwd)/tmux ~/.config/tmux

ln -s $(pwd)/starship.toml ~/.config/starship.toml

I need a way to specify the home directory for cases like Windows. 

#### Tmux additions

When tmux is run for the first time, do <leader>+I to install plugins.
