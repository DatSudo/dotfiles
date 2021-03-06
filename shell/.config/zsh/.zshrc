khal calendar

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

# Auto-quote pasted links
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic

autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic


# Import aliases and functions
[ -f "$HOME/.config/aliases" ] && . "$HOME/.config/aliases"
[ -f "$HOME/.config/functions" ] && . "$HOME/.config/functions"

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Add plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/plugins/dirhistory.plugin.zsh
source $HOME/.config/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh

# Add p10k theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# Remove p10k right elements
POWERLEVELk9K_RIGHT_PROMPT_ELEMENTS=()

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

