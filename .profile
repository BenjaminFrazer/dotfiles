export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/vim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# source user enviromental variabes
source ~/.env
# fix "xdg-open fork-bomb" export your preferred browser from here
eval $(ssh-agent)
