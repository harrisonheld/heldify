#!/bin/bash
set -e

# Clock
gsettings set org.gnome.desktop.interface clock-show-weekday false
gsettings set org.gnome.desktop.interface clock-show-date false
gsettings set org.gnome.desktop.interface clock-show-seconds false

# Disable Animations
gsettings set org.gnome.desktop.interface enable-animations false

echo "Base GNOME settings applied."
