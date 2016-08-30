function git_branch_delete_merged_master {
  git checkout master
  git branch --merged | egrep -v '\* master$' | xargs git branch --delete
}

# Git Shortcuts
alias ga='git add'
alias gap='git add -p'
alias gb='git branch'
alias gbdmm=git_branch_delete_merged_master
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcop='git checkout -p'
alias gd='git diff'
alias gds='git diff --staged'
alias gg='git grep'
alias gl='git log'
alias gp='git pull'
alias grh='git reset HEAD'
alias grhp='git reset HEAD -p'
alias gst='git status'

# Source Autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Source Work Stuff
if test -f ".bash_work"; then source ".bash_work"; fi
