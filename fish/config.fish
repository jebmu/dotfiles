#  __ _     _     
# / _(_)___| |__  
#| |_| / __| '_ \ 
#|  _| \__ \ | | |
#|_| |_|___/_| |_|

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting


# Pacman

abbr p "sudo pacman"
abbr ps "sudo pacman -S"
abbr pss "pacman -Ss"
abbr psyu "sudo pacman -Syu"
abbr pq "pacman -Qs"
abbr pr "sudo pacman -Rns"


# Yay

abbr y "yay"
abbr ys "yay -S"
abbr yss "yay -Ss"
alias syu="yay -Syu"
abbr yq "yay -Qs"
abbr yr "yay -Rns"


# Shutdown

alias sh="shutdown now"


# Text Editor

# set -gx EDITOR micro
# set -Ux EDITOR micro
alias e="micro"
alias ef="micro ~/dotfiles/fish/config.fish"
alias ek="micro ~/dotfiles/kitty/kitty.conf" 
alias en="micro ~/dotfiles/nimdow/config.toml"
alias eh="micro ~/dotfiles/hypr/hyprland.conf"


# flac

alias flac="flac --delete-input-file -w --verify --best *.wav"

# Starship

starship init fish | source


# Zoxide

zoxide init fish | source
alias cd="z"
alias ..="cd .."


# Exa

alias ls="exa -a --color=always --group-directories-first"				# horizontal without metadata
#alias ls="exa -al --color=always --group-directories-first"			# vertical with metadata


# Bling

#./.config/fish/bunnyfetch
#./dotfiles/scripts/terminal-bling


# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'


# alias df='df -h'                          								# human-readable sizes
# alias free='free -m'                      								# show sizes in MB
alias c="clear"


abbr s "sudo"
# alias sudo="doas"
abbr gc "git clone"


end
