
export PATH=$HOME/bin:$HOME/.rbenv/bin:/usr/local/bin:/usr/local/sbin:$PATH

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# Load all of the modules
if [ -d ~/.bash-modules ]; then
  for module in ~/.bash-modules/*; do
    source $module
  done
fi



