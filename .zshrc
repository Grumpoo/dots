# Main.
HISTFILE=~/.histfile
HISTSIZE=20000
SAVEHIST=20000
zstyle :compinstall filename '/home/grumpo/.zshrc'
autoload -Uz compinit
autoload -U promptinit && promptinit
compinit

# Fix Ctrl/Alt + Left or Right movement.
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

bindkey "^[[1;5D" beginning-of-line
bindkey "^[[1;5C" end-of-line

# Environment variables.
export EDITOR=gvim
export BROWSER=firefox
export PATH="$HOME/.local/bin:$PATH"

# Aliases.
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

# Customization.
PS1="%B%F{green}%~%b %B%F{blue} %b%F{white}"
RPROMPT="%F{black}%*"

# Custom Plugins.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
