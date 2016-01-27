#!/usr/bin/env bash

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias vi='vim'

# before prompt
PS1="\[\e[1;33m\]\u\[\e[1;36m\]@\[\e[1;34m\]\h\[\e[0;37m\]:\w\[\e[0;32m\]> \[\e[0m\]"

# set terminal color
export TERM=xterm-256color

export PATH=$PATH:/home/grhan/dev_setting/bin

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Git config
function git_config_kdb() {
    git config user.email "grhan@kdb.snu.ac.kr"
    git config user.name "Han, Geore"
}

function git_config_gmail() {
    git config user.email "kr8534@gmail.com"
    git config user.name "Han, Geore"
}

# To generate core dump
ulimit -c unlimited

# include local bashrc
if [ -f ~/.bashrc.local ]; then
    source ~/.bashrc.local
fi
