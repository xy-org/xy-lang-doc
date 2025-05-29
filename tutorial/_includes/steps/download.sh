mkdir -p ~/.xyc
curl -L "https://github.com/xy-org/pyxyc/releases/download/continuous/xyc-$(uname | awk '{print tolower($0)}').tar.gz" | tar xz -C ~/.xyc
echo "export PATH=\"\$HOME/.xyc:\$PATH\"" >> "$HOME/.${SHELL##*/}rc"
export PATH="$HOME/.xyc:$PATH"