# Main.
HISTFILE=~/.histfile
HISTSIZE=20000
SAVEHIST=20000
zstyle :compinstall filename '/home/grumpo/.zshrc'
# setopt correct
bindkey -v
autoload -Uz compinit
autoload -U promptinit && promptinit
compinit

# Fix Ctrl/Alt + Left or Right movement.
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

bindkey "^[[1;5D" beginning-of-line
bindkey "^[[1;5C" end-of-line

# Environment variables.
export TERM=alacritty
export EDITOR=code
export BROWSER=firefox
export PATH="$HOME/.local/bin:$PATH"

# Mommy. :pleading-face:
precmd() { mommy -1 -s $? }

# Aliases.
alias ls='exa --icons'
alias ll='exa -l --icons'
alias la='exa -la --icons'
alias lsa='exa -a --icons'
alias mkdir='mkdir -p'
alias rm='rm -rfv'
alias cp='cp -rv'
alias ..='cd ..'
alias ...='cd ...'
alias neofetch='clear; uwufetch'
alias egrep='egrep -e'
alias poweroff='systemctl poweroff'
alias reboot='systemctl reboot'
alias drivesizecheck='sudo ncdu -x /'
alias fixntfsdrive='sudo umount /dev/sdb1; sudo ntfsfix /dev/sdb1'
alias vencordinstall='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'

# Configs.
alias bspwmconf='vim ~/.config/bspwm/bspwmrc'
alias sxhkdconf='vim ~/.config/sxhkd/sxhkdrc'
alias polybarconf='vim ~/.config/polybar'
alias alacrittyconf='vim ~/.config/alacritty/alacritty.toml'
alias zshconf='vim ~/.zshrc; source .zshrc'
alias vimconf='vim ~/.vimrc'
alias xinitrcconf='vim ~/.xinitrc'

# Customization.
PROMPT="%B%F{green}%~ %B%F{blue} %F{white}"
RPROMPT="%B%F{black}%n@%m"

# Custom Plugins.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Fuck. (useful)
eval $(thefuck --alias)
