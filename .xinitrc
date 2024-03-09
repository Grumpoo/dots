#!/bin/sh

# Enviroment Variables.
export PATH="$HOME/.local/bin:$PATH"
export QT_QPA_PLATFORMTHEME=gtk2
export CLUTTER_DEFAULT_FPS=144
export __GL_SYNC_DISPLAY_DEVICE=DP-0
export __GL_SYNC_TO_VBLANK=0

# Theming.
xrdb -merge ~/.Xresources
xsetroot -cursor_name left_ptr

# Autostart.
otd-daemon &
nvidia-xconfig &

# Fix slow app opening.
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY

# Launch the window manager.
exec bspwm
