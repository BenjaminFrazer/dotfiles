export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/vim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH=~/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin/:$PATH:
export PATH=~/scripts/:$PATH
export PATH=~/.local/bin:$PATH
export PATH=~/.cargo/bin/:$PATH
# source user enviromental variabes
source ~/.env
# fix "xdg-open fork-bomb" export your preferred browser from here
eval $(ssh-agent)
