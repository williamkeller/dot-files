export PATH=$HOME/bin:/opt/homebrew/bin:/usr/local/bin:/usr/local/sbin:/usr/local/opt/fzf/bin:$PATH

export EDITOR='vim'

export FZF_DEFAULT_COMMAND='ag --nocolor --ignore node_modules -g ""'

eval "$(starship init zsh)"
eval "$(rbenv init - --no-rehash zsh)"


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
alias v="nvim ."

