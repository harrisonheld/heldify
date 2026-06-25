#!/bin/bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

dconf load /org/gnome/shell/extensions/blur-my-shell/ \
    < "$ROOT_DIR/dconf/blur-my-shell.conf"
dconf load /org/gnome/shell/extensions/dash-to-panel/ \
    < "$ROOT_DIR/dconf/dash-to-panel.conf"
