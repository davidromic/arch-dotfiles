#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='\[\033[0;36m\][\u \[\033[0;31m\]\w\[\033[0;36m\]] \[\033[0m\']


source ~/.bash_aliases
