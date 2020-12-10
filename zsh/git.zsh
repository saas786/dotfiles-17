#
# Git autocompletion for custom scripts
#

_git_delete_branch () { __gitcomp_nl "$(__git_refs)" }

function acp() {
  git add .
  git commit -m "$1"
  git push
}

alias ga="git add"
alias gan="git add --intent-to-add"
alias gap="git add --patch"
alias gc!="git commit -v --amend"
alias gc="git commit -v"
alias gca!="git commit -v -a --amend"
alias gca="git commit -v -a"
alias gsp="git smart-pull"
alias gspp="git smart-pull && git push"
alias gss="git status -s"
alias gwip="git commit -amWIP"
# Branches
alias gco="git checkout"
alias gb="git branch"
alias gm="git merge"
alias grb="git rebase"
# Log
alias glg='git log --stat --color'
alias glgp='git log --stat --color -p'
alias glgg='git log --graph --color'
alias glgga='git log --graph --decorate --all'
alias glgm='git log --graph --max-count=10'
alias glo='git log --oneline --decorate --color'
alias glol="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glola="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
alias glog='git log --oneline --decorate --color --graph'
alias groot='cd $(git root)'

# Github
alias hpr="hub pull-request"
alias hbr="hub browse"
alias hci="hub ci-status"
