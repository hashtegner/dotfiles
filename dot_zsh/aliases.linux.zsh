# Clipboard (requires xclip: sudo apt install xclip)
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias pubkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo '=> Public key copied to clipboard.'"

# System
alias open='xdg-open'
