# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="powerlevel10k/powerlevel10k"

# Aliases
alias windsurf="open -a Windsurf"
alias tree="find . -print | sed -e 's;[^/]*/;|;g;s;|; |;g'"
alias status="git status"

# Evals
eval "$(zoxide init zsh)"

# Which plugins would you like to load?
plugins=(
    git
    zsh-autosuggestions
    docker
    npm
)

source $ZSH/oh-my-zsh.sh

# Source the Dracula theme configuration for Powerlevel10k
[[ ! -f ~/.dracula-p10k/files/.p10k.zsh ]] || source ~/.dracula-p10k/files/.p10k.zsh

# Basic Dracula colors for syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main)
typeset -gA ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=green'
ZSH_HIGHLIGHT_STYLES[alias]='fg=green'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[function]='fg=green'
ZSH_HIGHLIGHT_STYLES[path]='fg=blue'

# Source syntax highlighting (must be at the end!)
source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
