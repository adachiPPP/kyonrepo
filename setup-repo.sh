#!/usr/bin/env bash
# Adds the kyonrepo custom repository to pacman and installs kyon-wallpapers.
#
# Usage:
#   ./setup-repo.sh                                  # local file:// copy of this repo
#   ./setup-repo.sh https://adachippp.github.io/wallpapers/   # hosted on GitHub Pages
set -e

SERVER="${1:-file://$HOME/kyonrepo}"

if grep -q '^\[kyonrepo\]' /etc/pacman.conf; then
    echo "[kyonrepo] already present in /etc/pacman.conf"
else
    sudo tee -a /etc/pacman.conf >/dev/null <<EOF

[kyonrepo]
SigLevel = Optional TrustAll
Server = $SERVER
EOF
    echo "Added [kyonrepo] to /etc/pacman.conf (Server = $SERVER)"
fi

sudo pacman -Sy kyon-wallpapers
echo "Done. Launch it with: kyon-wallpapers"
