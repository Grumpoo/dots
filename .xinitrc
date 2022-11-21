#!/bin/sh

# Enviroment Variables.
export PATH="$HOME/.local/bin:$PATH"
export QT_QPA_PLATFORMTHEME=qt5ct

# Theming.
xrdb -merge ~/.Xresources
xsetroot -cursor_name left_ptr

# Autostart.
otd &

# Fix slow app opening.
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY

# Launch the window manager (bspwm).
exec bspwm
