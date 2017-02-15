setopt promptsubst

git_prompt_info() {
  current_branch=$(git current-branch 2> /dev/null)
  if [[ -n $current_branch ]]; then
    echo " on %{$fg_bold[green]%}$current_branch%{$reset_color%}"
  fi
}
collapse_pwd() {
    echo $(pwd | sed -e "s,^$HOME,~,")

}

precmd() {
  print -rP '%{$fg_bold[blue]%}%n%{$reset_color%}${SSH_CONNECTION+"@%{$fg_bold[green]%}%m%{$reset_color%}"} in %{$fg_bold[red]%}$(collapse_pwd)%{$reset_color%}$(git_prompt_info)'

}

export PROMPT="%# "
