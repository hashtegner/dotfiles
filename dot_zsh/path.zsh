# Local user binaries
export PATH="$HOME/.local/bin:$PATH"

# macOS-specific paths
if [[ "$OSTYPE" == "darwin"* ]]; then
  export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
  export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
fi
