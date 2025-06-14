# ~/.bashrc#

# Import colorscheme from 'wal' asynchronously
cat ~/.cache/wal/sequences &

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

eval "$(starship init bash)"'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export ELECTRON_OZONE_PLATFORM_HINT=wayland
export QT_QPA_PLATFORM=wayland
export GDK_BACKEND=wayland

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

source /usr/share/bash-completion/bash_completion

fastfetch
