set -g fish_greeting
if status is-interactive
    fish_git_prompt
    # set -g theme_display_ruby no        # Disables displaying the current ruby version
    # set -g theme_display_virtualenv no  # Disables displaying the current virtualenv name
    # Commands to run in interactive sessions can go here
end

fish_add_path ~/repos/scripts/
fish_add_path ~/.cargo/bin/

envsource ~/.env
source ~/.bash_aliases
source ~/dotfiles/paths.sh
source /home/benf/.config/fish/conf.d/fnm.fish

function fish_user_key_bindings 
    fish_vi_key_bindings
    bind --erase --preset \ek
    bind --erase --preset \ej
    bind --erase --preset \eh
    bind --erase --preset \el
end

set -gx PATH $HOME/.fnm $PATH
fnm env | source

direnv hook fish | source

# pnpm
set -gx PNPM_HOME "/home/benf/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
