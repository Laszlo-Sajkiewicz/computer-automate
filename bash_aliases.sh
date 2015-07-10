#!/bin/bash

#edit
alias bashrc='$EDITOR ~/.bashrc'
alias bashaliases='$EDITOR ~/.bash_aliases'
#protect
alias cp ='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias rmd='rm -ri'
#information
alias ip='ifconfig'
alias name='uname -a'
alias psk=' ps >> ps.txt ; cat ps.txt | cut -c 1-11 ; rm ps.txt'
alias ps1='echo $PS1'
#other
alias ll='ls -la'
alias psfu='ps -f -u'
alias h='history'
#github
alias gs="git status" 
alias gc="git commit"
alias gp='git push'
