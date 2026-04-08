export PATH=$HOME/bin:/opt/homebrew/bin:/usr/local/bin:/usr/local/sbin:/usr/local/opt/fzf/bin:$PATH

export EDITOR='vim'

export FZF_DEFAULT_COMMAND='ag --nocolor --ignore node_modules -g ""'

#
# Aliases
#
# Tmux
alias ts="tmux new -s "
alias tl="tmux list-sessions"
alias ta="tmux attach-session -t "

# Git
alias gst="git status"
alias gd="git diff"
alias gcp="git cherry-pick"
alias gundo="git reset HEAD"
alias oops="git reset HEAD~1"

# Ruby
alias be="bundle exec"

# Vim
alias v="nvim . "
alias vim="nvim"

# Todo
alias td="todo.sh"
alias tdl="todo.sh list"
alias tdc="todo.sh listcon"
alias tdp="todo.sh listproj"

eval "$(starship init zsh)"
eval "$(rbenv init - --no-rehash zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Local shell settings
[ -f ~/.local.zsh ] && source ~/.local.zsh
