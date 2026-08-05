Dotfiles for my unix environment setup

This scheme assumes the destination machine is running zsh

## Setup

At some point, I'll make an automated way to do this, but I don't use it
often enough now to bother.

#### Submodules

This repo uses submodules, so after clone this, run
`git submodule update --init`

Occasionall run `git submodule update` to update the submodules.


#### Link each of the dotfiles to your home directory

stow -t ~ *

#### Tmux additions

When tmux is run for the first time, do <leader>+I to install plugins.
