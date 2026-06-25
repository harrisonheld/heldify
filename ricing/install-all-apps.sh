#!/bin/bash
set -euo pipefail

sudo apt install -y \
    ripgrep \
    bat \
    fd-find \
    fzf

# Determine real user (not root when using sudo)
REAL_USER="${SUDO_USER:-$USER}"
REAL_HOME=$(eval echo "~$REAL_USER")

BASHRC="$REAL_HOME/.bashrc"

BLOCK_START="# >>> ricing tools >>>"
BLOCK_END="# <<< ricing tools <<<"

# Remove existing block (idempotent)
if grep -q "$BLOCK_START" "$BASHRC"; then
    sed -i "/$BLOCK_START/,/$BLOCK_END/d" "$BASHRC"
fi

cat >> "$BASHRC" << 'EOF'
# >>> heldify tools >>>
alias bat=batcat
alias fd=fdfind

# fzf keybindings
if [ -f /usr/share/doc/fzf/examples/key-bindings.bash ]; then
    source /usr/share/doc/fzf/examples/key-bindings.bash
fi
# fzf completion
if [ -f /usr/share/doc/fzf/examples/completion.bash ]; then
    source /usr/share/doc/fzf/examples/completion.bash
fi
# export FZF_CTRL_R_OPTS="--height 40%"

# <<< heldify tools <<<
EOF
