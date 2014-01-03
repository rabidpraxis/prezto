# Aliases
alias g='git'
alias gst='git status --short'
alias gl='git pull'
alias gup='git fetch && git rebase'
alias gp='git push'
gdv() { git-diff -w "$@" | view - }
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gco='git checkout'
alias gb='git branch'
alias gba='git branch -a'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias glg='git log --stat --max-count=5'
alias gra='g ra'
alias gd='g diff'

#
# Easy commit messages
# ex: gg the commit message is this
#
function gg () {
  git commit -v -a -m "$*"
}

#
# Will return the current branch name
# Usage example: git pull origin $(current_branch)
#
function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}
