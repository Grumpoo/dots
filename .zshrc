### MAIN SHIT. ###
HISTFILE=~/.histfile
HISTSIZE=20000
SAVEHIST=20000
zstyle :compinstall filename '/home/grumpo/.zshrc'
autoload -Uz compinit
autoload -U promptinit && promptinit
compinit

### FIX CTRL/ALT + LEFT OR RIGHT MOVEMENT. ###
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

bindkey "^[[1;5D" beginning-of-line
bindkey "^[[1;5C" end-of-line

### ENVIROMENT VARIABLES. ###
export EDITOR=gvim
export BROWSER=firefox
export PATH="$HOME/.local/bin:$PATH"

### ALIAS. ###
# Main stuff.
alias ls='ls --color=auto'
alias poweroff='systemctl poweroff'
alias reboot='systemctl reboot'
alias update='paru; paru -S linux-xanmod-bin; sudo update-grub; sudo flatpak update'

# Configs.
alias bspwmconf='gvim ~/.config/bspwm/bspwmrc'
alias sxhkdconf='gvim ~/.config/sxhkd/sxhkdrc'
alias polybarconf='gvim ~/.config/polybar/config.ini'
alias vimconf='gvim ~/.vimrc'
alias zshconf='gvim ~/.zshrc'

### CUSTOMIZATION. ###
# Prompt.
PS1="%B%F{green}%~%b %B%F{blue} %b%F{white}"
RPROMPT="%F{black}%*"

# Custom Plugins.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
