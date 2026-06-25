#!/bin/bash
set -euo pipefail

sudo apt install python3-pip pipx gnome-shell-extensions

pipx install gnome-extensions-cli --system-site-packages

EXTENSIONS=(
    "dash-to-panel@jderose9.github.com"
    "blur-my-shell@aunetx"
)
# install_extension "dash-to-panel" "dash-to-panel@jderose9.github.com"
for ext in "${EXTENSIONS[@]}"; do
    echo "Installing $ext..."
    gext install "$ext"
    gext enable "$ext"
done

echo "Restarting GNOME Shell to apply changes..."
gnome-extensions disable "$ext" && gnome-extensions enable "$ext"

