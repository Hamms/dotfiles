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
