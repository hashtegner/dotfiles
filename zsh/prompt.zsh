autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

resetColor="%{$reset_color%}"
baseColor="%{$fg[green]%}"
dirtyColor="%{$fg_bold[red]%}"
cleanColor="%{$fg[green]%}"
prefix="🦄"
dir="$baseColor%~$resetColor"

git_branch() {
  echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  if $(! $git status -s &> /dev/null)
  then
    echo ""
  else
    if [[ $($git status --porcelain) == "" ]]
    then
      echo "at $cleanColor$(git_prompt_info) ✔$resetColor"
    else
      echo "at $dirtyColor$(git_prompt_info) ✖$resetColor"
    fi
  fi
}

git_prompt_info () {
 ref=$($git symbolic-ref HEAD 2>/dev/null) || return
# echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
 echo "${ref#refs/heads/}"
}

# This assumes that you always have an origin named `origin`, and that you only
# care about one specific origin. If this is not the case, you might want to use
# `$git cherry -v @{upstream}` instead.
need_push () {
  if [ $($git rev-parse --is-inside-work-tree 2>/dev/null) ]
  then
    number=$($git cherry -v origin/$(git symbolic-ref --short HEAD) 2>/dev/null | wc -l | bc)

    if [[ $number == 0 ]]
    then
      echo " "
    else
      echo " with $dirtyColor$number unpushed$resetColor"
    fi
  fi
}

directory_name() {
  echo "$baseColor%~$resetColor"
}

export PROMPT=$'\n🦄 $(directory_name) $(git_dirty)$(need_push)\n› '
