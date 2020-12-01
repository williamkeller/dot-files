
export PATH=$HOME/bin:$HOME/.rbenv/bin:/usr/local/bin:/usr/local/sbin:$PATH


# Load all of the modules
if [ -d ~/.zsh_modules ]; then
  for module in ~/.zsh_modules/*; do
    source $module
  done
fi
