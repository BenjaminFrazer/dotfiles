export PATH="$HOME/.config/emacs/bin:$PATH"
export PATH="$HOME/local/gcc-arm-none-eabi-10.3-2021.10/bin:$PATH"
export PATH="/opt/betaflight/betaflight-configurator:$PATH"
export PATH="~/repos/scripts/:$PATH"
export PATH="~/.cargo/bin/:$PATH"
export PATH="/opt/gcc-arm-none-eabi-9-2020-q2-update/bin:$PATH"
export PATH="/home/benf/.platformio/penv/bin:$PATH"
# source user enviromental variabes
source ~/.env
# fix "xdg-open fork-bomb" export your preferred browser from here
eval $(ssh-agent)

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
