export FZF_DEFAULT_COMMAND='fd --type f --hidden --exclude .git'

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
 --color=fg:#c6c8d1,bg:#191919,hl:#89b8c2
 --color=fg+:#95c4ce,bg+:#191919,hl+:#95c4ce
 --color=info:#c6c8d1,prompt:#89b8c2,pointer:#89b8c2
 --color=marker:#89b8c2,spinner:#89b8c2,header:#89b8c2'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
