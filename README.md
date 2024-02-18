<p align=center><img src=https://i.imgur.com/Yeo44OC.png style="width:450px"></a></p>

## What do I use?
* Distro: Arch Linux (best distro ong)
* Window Manager: bspwm
* Terminal Emulator: Alacritty
* Audio Server: Pipewire (because I play osu! lol)
* Text Editor: vim (or VSC)
* Login Manager:  SLiM
* Application Launcher: rofi
* Complimenter: mommy (very important to this rice)

## Disclaimer!
The following rice has a dual monitor configuration, so you need to change the config files to match your preference.

The same thing goes for the Latvian text and localization in this rice, you may need Photoshop skills to change the login screen text for SLiM.

Also, for the love of God, <b>don't use my Pipewire config</b>, unless you also play <a href=https://osu.ppy.sh>osu!</a>, a free to play rhythm game that works better on Linux than it does on Windows, because of audio latency (lmao).

## Installation.

<details>
<summary>Before we begin, we need to install dependencies:</summary>

```bash
paru -S bspwm sxhkd alacritty jgmenu rofi polybar picom dunst nitrogen slim ttf-roboto lxappearance visual-studio-code-bin vim mpd mpc ncmpcpp thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman gvfs qt5ct kvantum materia-gtk-theme kvantum-theme-materia papirus-icon-theme papirus-folders zsh zsh-autosuggestions zsh-syntax-highlighting pulsemixer pavucontrol lxsession network-manager-applet flameshot i3lock-color gtk-engine-murrine xarchiver ristretto xfce4-clipman-plugin xfce4-power-manager emote xautolock gnome-disk-utility shellspec-bin mommy vlc
```

Now, we get the dotfiles themselves:
```bash
git clone https://github.com/grumpoo/dots
```

</details>

Once we have all the shit downloaded/installed, it's time for <b>step 2</b>.

<details>
<summary>Copying the files to the appropriate locations:</summary>
  
First thing we do is copy the files for the home and root directories:
```bash
cd dots; cp -r .config/ .local/ .mpd/ .ncmpcpp/ .wallpapers/ .gtkrc-2.0 .zshrc .vimrc .Xresources .xinitrc ~/; sudo cp -r etc/ usr/ /
```
After you've done that, make some files executable:
```bash
chmod +x ~/.config/bspwm/bspwmrc; chmod +x .xinitrc; chmod +x ~/.config/polybar/launch.sh; chmod +x ~/.local/bin/*
```
And last, but not least, <b>restart your system.</b>
If you see the <b>Killer fish from San Diego</b> pfp in the middle, then CONGRATULATIONS, YOU HAVE SUCCESSFULLY GOT MY RICE TO WORK ON YOUR PC! :D  

The only thing left to now is to delete the ``dotfiles`` folder:
```bash
rm -rf dots/
```

For Vim, we need <a href=https://github.com/junegunn/vim-plug>Vim-plug</a> for the plugins (if you plan on using Vim instead of VSC xd):
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Then, open vim and type ``:PlugInstall``.

Optionally, you can change the folder colours with ``papirus-folders``:
```bash
papirus-folders -C black* -t Papirus-Dark
```
*Note: To find out what other colours it has, write the ``papirus-folders -l`` command.
</details>

## Inspiration:
* <a href=https://github.com/Syndrizzle/hotfiles/tree/bspwm>Syndrizzle</a> for the whole rice inspiration! :D
* <a href=https://grumpoo.github.io/skin>My skin xddd</a>
