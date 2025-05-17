ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"


#Plugins
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light junegunn/fzf

#Compleations
autoload -U compinit; compinit

# Keybindings
bindkey -e
bindkey '^j' history-search-backward
bindkey '^k' history-search-forward
bindkey '^[w' kill-region

#History
HITSIZE=5000
HISTFILE=~/.zsh_history
SAVEHISt=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Add in snippets
zinit snippet OMZL::git.zsh
zinit snippet OMZP::git
zinit snippet OMZP::sudo

#Styling
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*' fzf-tab--format '   %d'
zstyle ':fzf-tab:*' fzf-preview 'bat --style=numbers --color=always --line-range :500 {} 2>/dev/null || cat {}'


#Invoke Starship
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"

# Aliases
#APT
alias ls='eza -la --icons --group-directories-first --color=always'
alias aptin='sudo apt install'
alias aptrem='sudo apt remove'
alias aptpur='sudo apt purge'
alias aptarem='sudo apt autoremove'
#DNF
alias dnfin='sudo dnf install'
alias dnfrem='sudo dnf remove'
alias dnfup='sudo dnf update'
#alias dnfin='sudo dnf install'


alias cd='z'



export PATH=$PATH:/home/user/.spicetify
export PATH=$PATH:/home/user/.config/emacs/bin
