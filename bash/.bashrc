osname="$(uname -s)"

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
alias gsh='git show'
alias gst='git status'

# Lein Tests
test_out='/tmp/testoutput.log'
alias rlt='lein test > $test_out'
alias flt='egrep -B 3 "ERROR in|FAIL in" $test_out | grep lein'
alias tlt='tail -f $test_out'

# Source Autojump
case "${osname}" in
    Linux*)
      source /usr/share/autojump/autojump.bash;;
    Darwin*)
      [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh;;
    *)
      echo "Don't know how to source autojump for this OS ($osname)!"
esac

# Source Work Stuff
if test -f ".bash_work"; then source ".bash_work"; fi
