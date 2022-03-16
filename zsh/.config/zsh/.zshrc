HISTFILE=~/.config/zsh/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt SHARE_HISTORY

# Go to directory just by specifying the directory name
setopt autocd

# Set Vi mode
bindkey -v

# Prompt
PROMPT='[%~ % ] >> '

zstyle :compinstall filename '/home/datsudo/.zshrc'

autoload -Uz compinit
compinit

# Import aliases and functions
[ -f "$HOME/.config/aliases" ] && . "$HOME/.config/aliases"
[ -f "$HOME/.config/functions" ] && . "$HOME/.config/aliases"

# Pywal color scheme
wal -q -e -n -i /home/datsudo/Pictures/Wallpapers/gruv-gruvy.jpg

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh
