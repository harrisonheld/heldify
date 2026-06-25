#!/bin/bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

bash "$ROOT_DIR/install-deps.sh"
bash "$ROOT_DIR/install-gnome-extentions.sh"
bash "$ROOT_DIR/set-base-gnome-settings.sh"
bash "$ROOT_DIR/apply-gnome-extention-settings.sh"

echo "Done. You should log out and back in for GNOME Shell changes to fully apply."
