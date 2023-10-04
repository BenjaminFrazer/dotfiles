export TZ='Europe/London'
export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/vim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="/usr/local/stm32cubeide_1.12.1_2:$PATH"
export PATH="/usr/local/STMicroelectronics/STM32Cube/STM32CubeMX:$PATH"
export PATH=~/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin/:$PATH:
export PATH=~/scripts/:$PATH
export PATH=~/.local/bin:$PATH
export PATH=~/.cargo/bin/:$PATH
# source user enviromental variabes
source ~/.env
# fix "xdg-open fork-bomb" export your preferred browser from here
eval $(ssh-agent)
export PATH=/opt/gcc-arm-none-eabi-9-2020-q2-update/bin:$PATH
