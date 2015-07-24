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
alias du='du -h'
#other
alias ll='ls -la'
alias psfu='ps -f -u'
alias h='history'
alias ..='cd ..'
alias chux='chmod u+x' 
alias chur='chmod u+r'
alias chuw='chmod u+w'
#github
alias gs="git status" 
alias gm='git commit -m'
alias gp='git push'
alias ga='git add'
alias gpu='git pull'
alias gcl='git clone'
alias gpo='git push origin -u'
alias gme='git merge'
alias gco='git checkout'
alias gd='git diff'
#my alias
alias cl='~/script/clean.sh'
alias arch='~/scrip/archiving.sh'
alias info='~/script/info.sh'
