#! /bin/bash

# fix "xdg-open fork-bomb" export your preferred browser from here
eval $(ssh-agent)

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
			. "$HOME/.bashrc"
    fi
    if [ -f "$HOME/dotfiles/.bashrc" ]; then
			. "$HOME/dotfiles/.bashrc"
    fi
		## source user enviromental variabes
    if [ -f "$HOME/dotfiles/.env" ]; then
			. "$HOME/dotfiles/.env"
    fi
		# set PATH so it includes user's private bin if it exists
		if [ -d "$HOME/bin" ] ; then
				PATH="$HOME/bin:$PATH"
		fi
		# set PATH so it includes user's private bin if it exists
		if [ -d "$HOME/.local/bin" ] ; then
				PATH="$HOME/.local/bin:$PATH"
		fi
fi

if [ -f "$HOME/dotfiles/paths.sh" ]; then
	echo Loading Paths
	. "$HOME/dotfiles/paths.sh"
fi

