# Clipboard
alias pubkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo '=> Public key copied to clipboard.'"

# System
alias flushdns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder'
