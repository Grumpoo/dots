# Main.
HISTFILE=~/.histfile
HISTSIZE=20000
SAVEHIST=20000
zstyle :compinstall filename '/home/grumpo/.zshrc'
setopt correct
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

# Mommy. :pleading-face:
precmd() { mommy -1 -s $? }

# Aliases.
alias ls='ls --color=auto -FHh'
alias ll='ls -l'
alias la='ls -la'
alias poweroff='systemctl poweroff'
alias reboot='systemctl reboot'
alias update='paru; sudo flatpak update; sudo update-grub'
alias drivesizecheck='sudo ncdu -x /'

# Configs.
alias bspwmconf='vim ~/.config/bspwm/bspwmrc'
alias sxhkdconf='vim ~/.config/sxhkd/sxhkdrc'
alias polybarconf='vim ~/.config/polybar'
alias alacrittyconf='vim ~/.config/alacritty/alacritty.toml'
alias zshconf='vim ~/.zshrc; source .zshrc'
alias vimconf='vim ~/.vimrc'

# Customization.
PROMPT="%B%F{green}%~ %B%F{blue} %F{white}"
RPROMPT="%B%F{black}%n@%m - %*"

# Custom Plugins.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
