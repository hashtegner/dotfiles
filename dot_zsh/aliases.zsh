# Shell
alias reload!='source ~/.zshrc'
alias cls='clear'
alias e='$EDITOR'

# chezmoi
alias dot='chezmoi'
alias dot!='chezmoi apply && reload!'

# Modern CLI replacements
alias cat='bat'
alias ls='eza --icons'
alias l='eza -lh --icons'
alias ll='eza -l --icons'
alias lt='eza -l --icons --tree --level=4'
