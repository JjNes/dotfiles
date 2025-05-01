autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' insert-tab pending

# ngrok
if command -v ngrok &>/dev/null; then
  eval "$(ngrok completion)"
fi
