#!/bin/bash

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# User specific aliases and functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias grep='grep --color=auto'
alias ipext='curl -s ipinfo.io/ip'
alias ll="ls -l"
alias lo="ls -o"
alias lh="ls -lh"
alias la="ls -la"
alias sl="ls"
alias l="ls"
alias s="ls"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

PS1="\[\e[1;31m\][\[\e[1;33m\]\u\[\e[1;31m\]@\[\e[1;33m\]\H [\[\e[1;36m\]\t\[\e[1;33m\]] \[\e[1;32m\]\w\[\e[1;31m\]]\[\e[0m\]# "

extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi
