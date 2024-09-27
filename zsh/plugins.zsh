export PLUG_DIR=$HOME/.zsh
if [[ ! -d $PLUG_DIR/zsh-autosuggestions ]]; then
	git clone https://github.com/zsh-users/zsh-autosuggestions $PLUG_DIR/zsh-autosuggestions
fi
source $PLUG_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh