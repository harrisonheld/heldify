#!/bin/bash
set -e

# Clock
gsettings set org.gnome.desktop.interface clock-show-weekday false
gsettings set org.gnome.desktop.interface clock-show-date false
gsettings set org.gnome.desktop.interface clock-show-seconds false

echo "Base GNOME settings applied."
