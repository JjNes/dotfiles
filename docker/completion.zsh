# zsh completion for docker  
# make sure you execute this *after* asdf or other version managers are loaded
if (( $+commands[docker] )); then
  eval "$(docker completion zsh)"
  compdef _docker docker
fi
