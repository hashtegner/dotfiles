# Catppuccin Latte
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats ' %b'

setopt PROMPT_SUBST
# Lavender path, Mauve git branch, Green/Red prompt symbol
PROMPT='%F{#7287fd}%~%f%F{#8839ef}${vcs_info_msg_0_}%f %(#.%F{#d20f39}.%F{#40a02b})❯%f '
