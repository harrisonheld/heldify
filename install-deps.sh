#!/bin/bash
set -euo pipefail

sudo apt update
sudo apt install -y python3-pip \
	            pipx \
		    gnome-shell-extensions

pipx install gnome-extensions-cli --system-site-packages

