# === Плагины (ручная загрузка) ===
# Убедись, что они установлены в ~/.zsh/
[[ -f $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
[[ -f $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# === grc (Generic Colouriser) ===
[[ -f "$HOMEBREW_PREFIX/etc/grc.zsh" ]] && source "$HOMEBREW_PREFIX/etc/grc.zsh"