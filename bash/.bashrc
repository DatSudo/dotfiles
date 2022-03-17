# ~/.bashrc
#
#

# Start bash in vim mode
set -o vi

# for setting history length
HISTSIZE=10000
HISTFILESIZE=10000

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Add aliases
[ -f ~/.config/.aliases ] && . ~/.config/aliases

# Add functions
[ -f ~/.functions ] && . ~/.config/functions

# Prompt
PS1='[\u@\h \W]\$ '

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
# cat ~/.cache/wal/sequences &

# To add support for TTYs this line can be optionally added.
# source ~/.cache/wal/colors-tty.sh
