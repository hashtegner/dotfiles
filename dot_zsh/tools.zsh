# mise (version manager)
if command -v mise &>/dev/null; then
  eval "$(mise activate zsh)"
fi

# fzf (fuzzy finder)
if command -v fzf &>/dev/null; then
  source <(fzf --zsh)
fi

# zoxide (smarter cd)
if command -v zoxide &>/dev/null; then
  eval "$(zoxide init zsh)"
fi
