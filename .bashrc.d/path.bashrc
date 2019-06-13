# Private bin directories
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# snap
if [ -d /snap/bin ]; then
  export PATH="/snap/bin:$PATH"
fi

# "local" npm binaries (those installed per-user)
if [ -d $HOME/.local/node_modules/.bin ]; then
  export PATH="$HOME/.local/node_modules/.bin:$PATH"
fi

# "dev"/"relative" npm binaries (those installed per-directory)
export PATH="./node_modules/.bin:$PATH"

# Ubuntu make installation of Ubuntu Make binary symlink
if [ -d "$HOME/.local/share/umake/bin" ] ; then
  export PATH="$HOME/.local/share/umake/bin:$PATH"
fi

# Rust
if [ -d "$HOME/.cargo/bin" ] ; then
  export PATH="$HOME/.cargo/bin:$PATH"
fi
