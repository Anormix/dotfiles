### EXPORT
export TERM="xterm-256color"                      # getting proper colors
export HISTORY_IGNORE="(ls|cd|pwd|exit|sudo reboot|history|cd -|cd ..)"
export EDITOR="emacsclient -t -a "              # $EDITOR use Emacs in terminal
export VISUAL="emacsclient -c -a emacs"           # $VISUAL use Emacs in GUI mode
export PATH="$HOME/.config/emacs/bin:$PATH"

### Aliases
alias alac="vim ~/.config/alacritty/alacritty.toml"
alias piconf="vim ~/.config/picom/picom.conf"
alias zshcon="vim ~/.config/zsh/.zshrc"
alias hyprcon="vim ~/.config/hypr/hyprland.conf"
alias mybinds="vim ~/.config/sxhkd/sxhkdrc"
alias bsp="vim ~/.config/bspwm/bspwmrc"
alias polycon="vim ~/.config/polybar/config.ini"
alias v="nvim"
alias vim="nvim"
alias emacs="emacsclient -c -a emacs"
alias doomcon="vim ~/.config/doom/config.el"
alias dots= "cd ~/dotfiles/"

# Changing "ls" to "eza"
alias ls="eza -al --color=always --group-directories-first" # my preferred listing
alias la="eza -a --color=always --group-directories-first"  # all files and dirs
alias ll="eza -l --color=always --group-directories-first"  # long format
alias lt="eza -aT --color=always --group-directories-first" # tree listing
alias l.="eza -al --color=always --group-directories-first ../" # ls on the PARENT directory
alias l..="eza -al --color=always --group-directories-first ../../" # ls on directory 2 levels up
alias l...="eza -al --color=always --group-directories-first ../../../" # ls on directory 3 levels up

# Pacman & Yay
alias pacs="sudo pacman -S"                      # install pkgs
alias pacsyu="sudo pacman -Syu"                  # update only standard pkgs
alias pacsyyu="sudo pacman -Syyu"                # Refresh pkglist & update standard pkgs
alias pacrns="sudo pacman -Rns"
alias pacclean="sudo pacman -Sc"
alias unlock="sudo rm /var/lib/pacman/db.lck"    # remove pacman lock
alias yays='yay -S'
alias yayr='yay -Rns'
alias yayclean='yay -Sc --aur'                  #Clears yaya cache

### SETTING THE STARSHIP PROMPT ###
eval "$(starship init zsh)"
