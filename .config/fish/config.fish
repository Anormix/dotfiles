if status is-interactive
	# Commands to run in interactive sessions can go here
end
#PFETCH config
pfetch
export PF_SEP=""
export PF_INFO="ascii title os kernel wm uptime pkgs memory"

#Aliases
alias alac "vim ~/.config/alacritty/alacritty.toml"
alias piconf "vim ~/.config/picom/picom.conf"
alias fishcon "vim ~/.config/fish/config.fish"
alias hyprcon "vim ~/.config/hypr/hyprland.conf"
alias mybinds "vim ~/.config/sxhkd/sxhkdrc"
alias bsp "vim ~/.config/bspwm/bspwmrc"
alias polycon "vim ~/.config/polybar/config.ini"
alias v nvim
alias vim nvim
alias emacs "emacsclient -c -a 'emacs'"
alias doomcon "vim ~/.config/doom/config.el"
alias gitui "gitui -t mocha.ron"
alias dots "cd ~/dotfiles/"

### ADDING TO THE PATH
# First line removes the path; second line sets it.  Without the first line,
# your path gets massive and fish becomes very slow.
set -e fish_user_paths
set -U fish_user_paths $HOME/.bin  $HOME/.local/bin $HOME/.config/emacs/bin $HOME/Applications /var/lib/flatpak/exports/bin/ $fish_user_paths
export PATH="$HOME/.emacs.d/bin:$PATH"
fish_add_path /home/user/.spicetify

### EXPORT ###
set fish_greeting                                 # Supresses fish's intro message

#EDITORS
set -gx EDITOR emacs
set -gx VISUAL emacs

# Changing "ls" to "eza"
alias ls='eza -al --color=always --group-directories-first' # my preferred listing
alias la='eza -a --color=always --group-directories-first'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first'  # long format
alias lt='eza -aT --color=always --group-directories-first' # tree listing
alias l.='eza -a | egrep "^\."'

# pacman and paru
alias pacsyu='sudo pacman -Syu'                  # update only standard pkgs
alias pacsyyu='sudo pacman -Syyu'                # Refresh pkglist & update standard pkgs
alias pacs='sudo pacman -S'
alias pacr='sudo pacman -Rns'
alias pacclean='sudo pacman -Sc'

alias yays='yay -S'
alias yayr='yay -Rns'
alias yayclean='yay -Sc --aur'                  #Clears yaya cache

starship init fish | source

### FUNCTIONS ###
# Functions needed for !! and !$
function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function __history_previous_command_arguments
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end

# The bindings for !! and !$
if [ "$fish_key_bindings" = "fish_vi_key_bindings" ];
  bind -Minsert ! __history_previous_command
  bind -Minsert '$' __history_previous_command_arguments
else
  bind ! __history_previous_command
  bind '$' __history_previous_command_arguments
end

# Function for creating a backup file
# ex: backup file.txt
# result: copies file as file.txt.bak
function backup --argument filename
    cp $filename $filename.bak
end

