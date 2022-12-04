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
export EDITOR=code
export BROWSER=firefox
export PATH="$HOME/.local/bin:$PATH"

# Aliases.
alias ls='ls --color=auto'
alias poweroff='systemctl poweroff'
alias reboot='systemctl reboot'
alias update='paru; paru -S --noconfirm linux-xanmod-bin; sudo update-grub; sudo flatpak update'

# Configs.
alias bspwmconf='code ~/.config/bspwm/bspwmrc'
alias sxhkdconf='code ~/.config/sxhkd/sxhkdrc'
alias polybarconf='code ~/.config/polybar/config.ini'
alias zshconf='code ~/.zshrc'

# Customization.
PS1="%B%F{green}%~%b %B%F{blue} %b%F{white}"
RPROMPT="%F{black}%*"

# Custom Plugins.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
