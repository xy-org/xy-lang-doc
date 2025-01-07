curl "https://github.com/xy-org/pyxyc/releases/download/continuous/xyc-x86_64" --create-dirs -Lo ~/.xyc/bin/xyc
chmod u+x ~/.xyc/bin/xyc
echo "export PATH=\"\$HOME/.xyc/bin:\$PATH\"" >> ~/.bashrc
export PATH="$HOME/.xyc/bin:$PATH"
