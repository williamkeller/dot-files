# Local shell settings
# Work and home machines will have slightly different configs. Put the differences
# into .zshrc.local, DON'T put them into source control, and reference them here.
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

export PATH=$HOME/bin:$HOME/.local/bin:$LOCAL_PATH:/usr/local/bin:/usr/local/sbin:/usr/local/opt/fzf/bin:$PATH

export EDITOR='nvim'

export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --exclude node_modules'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS="
  --height 40%
  --layout reverse
  --border
  --preview 'bat --color=always --line-range :50 {}'
  --preview-window right:50%:hidden
  --bind '?:toggle-preview'
"

# Aliases
#
# Tmux
alias ts="tmux new -s "
alias tl="tmux list-sessions"

# Git
alias gst="git status"
alias gd="git diff"
alias gcp="git cherry-pick"
alias gundo="git reset HEAD"
alias oops="git reset HEAD~1"
alias gls="git log --pretty=format:'%h%x09%an%x09%s'"

# Ruby
alias be="bundle exec"

# Vim
alias v="nvim"
alias vim="nvim"

# Todo
alias td="todo.sh"
alias tda="todo.sh add"
alias tdl="todo.sh list"
alias tdc="todo.sh listcon"
alias tdd="todo.sh done"
alias tdp="todo.sh listproj"

eval "$(starship init zsh)"
eval "$(rbenv init - --no-rehash zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


