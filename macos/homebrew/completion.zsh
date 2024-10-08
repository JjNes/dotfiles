if (( $+commands[brew] ))
then
  fpath=(${HOMEBREW_PREFIX}/share/zsh/site-functions $fpath)
fi