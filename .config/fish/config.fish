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

function fish_user_key_bindings 
    fish_vi_key_bindings
    bind --erase --preset \ek
    bind --erase --preset \ej
    bind --erase --preset \eh
    bind --erase --preset \el
end


direnv hook fish | source
