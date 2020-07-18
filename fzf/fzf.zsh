export FZF_DEFAULT_COMMAND='fd --type f --hidden --exclude .git'

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' --color=fg:#fafbfc,bg:#24292e,hl:#8a63d2 --color=fg+:#fafbfc,bg+:#24292e,hl+:#8a63d2 --color=info:#d73a49,prompt:#d73a49,pointer:#8a63d2 --color=marker:#34d058,spinner:#d73a49,header:#d73a49'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
