#!/bin/bash
set -euo pipefail

mkdir -p "$HOME/.config/gtk-3.0"
mkdir -p "$HOME/.config/gtk-4.0"

cat > "$HOME/.config/gtk-3.0/gtk.css" << 'EOF'
* {
    border-radius: 0px;
}
EOF

cat > "$HOME/.config/gtk-4.0/gtk.css" << 'EOF'
* {
    border-radius: 0px;
}
EOF
