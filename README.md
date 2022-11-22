## What do I use?
* Distro: Arch Linux (best distro ong)
* Window Manager: bspwm
* Terminal Emulator: Kitty (nyaa~)
* Audio Server: Pipewire (because I play osu! lol)
* Text Editor: GVim (weird but it works)
* Login Manager:  SLiM
* Application Launcher: rofi

## Disclaimer!
The following rice has a dual monitor configuration, so you need to change the config files to match your preference.

The same thing goes for the Latvian text and localization in this rice (yes I know I could have made a normal rice with English text, BUT NAH I AM JUST STUPID :DD).

Also, for the love of God, <b>don't use my Pipewire config</b>, unless you also play <a href=https://osu.ppy.sh>osu!</a>, a free to play rhythm game that works better on Linux than it does on Windows (lmao).

## Installation.

<details>
<summary>Before we begin, we need to install dependencies:</summary>

```bash
paru -S bspwm sxhkd kitty rofi polybar picom dunst nitrogen slim ttf-roboto lxappearance gvim mpd mpc ncmpcpp thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman gvfs qt5ct kvantum materia-gtk-theme kvantum-theme-materia papirus-icon-theme papirus-folders zsh zsh-autosuggestions zsh-syntax-highlighting pulsemixer pavucontrol lxsession network-manager-applet flameshot i3lock-color gtk-engine-murrine xarchiver ristretto  
```

Now, we get the dotfiles themselves:
```bash
git clone https://github.com/grumpoo/dots
```

</details>

Once we have all the shit downloaded/installed, it's time for <b>step 2</b>.

<details>
<summary>Copying the files to the appropriate locations:</summary>
  
First thing we do is copy the files for the home directory:
```bash
cd dots; cp .config/ .local/ .mpd/ .ncmpcpp/ .wallpapers/ .gtkrc-2.0 .zshrc .vimrc .Xresources .xinitrc ~/
```
Now, we copy the shit for the root directory:
```bash
sudo cp etc/ usr/ /
```
After you've done that, make some files executable:
```bash
chmod +x ~/.config/bspwm/bspwmrc; chmod +x ~/.config/polybar/launch.sh; chmod +x ~/.local/bin/*
```
And last, but not least, <b>restart your system.</b>
If you see the <b>Killer fish from San Diego</b> pfp in the middle, then CONGRATULATIONS, YOU HAVE SUCCESSFULLY GOT MY RICE TO WORK ON YOUR PC! :D  

The only thing left to now is to delete the ``dotfiles`` folder:
```bash
rm -rf dots/
```

For Vim, we need <a href=https://github.com/junegunn/vim-plug>Vim-plug</a> for the plugins:
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Then, open vim and type ``:PlugInstall``.

</details>
