export PLUG_DIR=$HOME/.zsh
if [[ ! -d $PLUG_DIR/zsh-autosuggestions ]]; then
	git clone https://github.com/zsh-users/zsh-autosuggestions $PLUG_DIR/zsh-autosuggestions
fi
source $PLUG_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh

if [[ ! -d $PLUG_DIR/zsh-syntax-highlighting ]]; then
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $PLUG_DIR/zsh-syntax-highlighting
fi
source $PLUG_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh