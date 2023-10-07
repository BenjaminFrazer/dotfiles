export TZ='Europe/London'
export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/vim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export PATH="$HOME/.config/emacs/bin:$PATH"
export DOOMDIR="$HOME/.doom.d/"
export PATH=~/scripts/:$PATH
export PATH=~/.cargo/bin/:$PATH
# source user enviromental variabes
source ~/.env
# fix "xdg-open fork-bomb" export your preferred browser from here
eval $(ssh-agent)
export PATH=/opt/gcc-arm-none-eabi-9-2020-q2-update/bin:$PATH

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
