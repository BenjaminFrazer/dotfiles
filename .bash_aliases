#!/usr/bin/env bash
alias i='sudo pacman -S'
alias clc='clear'
alias suspend='systemctl suspend'
alias shutdown='shutdown now'
alias mkscript='chmod u+x'
# this is for pinging docker aws lambdas running on the local maching
alias pinglambda='curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}''
alias lo="libreoffice"
alias python='python3'
alias e='bash -c "nvim \"\$(fzf)\""'
# Variants of tree
alias t1='tree -C -L 1 --filelimit 20 --gitignore'
alias t2='tree -C -L 2 --filelimit 20 --gitignore'
alias t3='tree -C -L 3 --filelimit 20 --gitignore'
alias t4='tree -C -L 3 --filelimit 20 --gitignore'
alias t5='tree -C -L 5 --filelimit 20 --gitignore'
alias t='tree -C -L 3 --filelimit 20 --gitignore'
alias tt='tree -C -L 4 --filelimit 20 --gitignore'
alias ttt='tree -C -L 5 --filelimit 20 --gitignore'
alias th='tree -C -P "*.h" --prune' # list header files
alias tc='tree -C -P "*.c" --prune' # list source files
