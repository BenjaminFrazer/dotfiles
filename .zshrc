# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
# load bash aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi
eval $(keychain --eval --quiet)
ZSH_THEME="agnoster"
export WORKON_HOME=~/.virtualenvs
export PATH="$HOME/bin:$PATH"
source /usr/bin/virtualenvwrapper.sh

