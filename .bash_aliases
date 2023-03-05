#!/usr/bin/env bash
alias i='sudo pacman -S'
alias clc='clear'
alias suspend='systemctl suspend'
alias shutdown='shutdown now'
alias mkscript='chmod u+x'
# this is for pinging docker aws lambdas running on the local maching
alias pinglambda='curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}''
