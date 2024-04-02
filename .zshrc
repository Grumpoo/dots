# Main.
HISTFILE=~/.histfile
HISTSIZE=20000
SAVEHIST=20000
zstyle :compinstall filename '/home/grumpo/.zshrc'
# setopt correct
bindkey -v
autoload -Uz compinit
autoload -U promptinit && promptinit
set -o PROMPT_SUBST
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
alias poweroff='systemctl poweroff'
alias reboot='systemctl reboot'
alias drivesizecheck='sudo ncdu -x /'
alias fixntfsdrive='sudo umount /dev/sdb1; sudo ntfsfix /dev/sdb1'
alias vencordinstall='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'

# Configs.
alias mommyconf='vim ~/.config/mommy/config.sh'
alias bspwmconf='vim ~/.config/bspwm/bspwmrc'
alias sxhkdconf='vim ~/.config/sxhkd/sxhkdrc'
alias polybarconf='vim ~/.config/polybar'
alias alacrittyconf='vim ~/.config/alacritty/alacritty.toml'
alias zshconf='vim ~/.zshrc; source .zshrc'
alias vimconf='vim ~/.vimrc'
alias xinitrcconf='vim ~/.xinitrc'

# Customization.
PS1="%B%F{green}%~ %B%F{blue}:3 %F{white}"
RPS1='$(mommy -1 -s $?)' # important.
#RPROMPT="%B%F{black}%n@%m - %*"

# Custom Plugins.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Fuck. (useful)
eval $(thefuck --alias)
