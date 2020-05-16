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
baseColor="%{$fg[white]%}"
dirtyColor="%{$fg_bold[magenta]%}"
cleanColor="%{$fg[green]%}"
pathColor="%{$fg[dark]%}"
local logo="$resetColor▲$resetColor"

__git_branch() {
  $git symbolic-ref --quiet --short HEAD 2>/dev/null \
    || $git rev-parse --short HEAD 2>/dev/null \
    || echo 'unknown'
}

__need_push() {
  number=$($git cherry -v 2>/dev/null | wc -l | bc)
  if [[ $number != 0 ]]
  then
    echo "with $dirtyColor$number unpushed$resetColor"
  fi
}

__prompt_git() {
  # check if we're in a git repo. (fast)
  $git rev-parse --is-inside--work-tree &>/dev/null || return

  $git diff --no-ext-diff --quiet \
    && echo "$cleanColor$(__git_branch) ✔$resetColor $(__need_push)" \
    || echo "$dirtyColor$(__git_branch) ✖$resetColor $(__need_push)"
}


__directory_name() {
  echo "$pathColor%c$resetColor"
}

export PROMPT=$'\n$logo ($(hostname -s)) $(__directory_name) $(__prompt_git)› '
