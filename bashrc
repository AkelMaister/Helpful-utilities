# .bashrc

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# User specific aliases and functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias grep='grep --color=auto'
alias ipext='curl -s http://checkip.dyndns.org/ | grep -o '[0-9][0-9]*.[0-9][0-9]*.[0-9][0-9]*.[0-9]*''

PS1="\[\e[1;31m\][\[\e[1;33m\]\u\[\e[1;31m\]@\[\e[1;33m\]\H [\[\e[1;36m\]\t\[\e[1;33m\]] \[\e[1;32m\]\w\[\e[1;31m\]]\[\e[0m\] "

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi
