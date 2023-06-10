#!/usr/bin/env bash
if ! [ -x "$(command -v archlinux-logout)" ]; then
   sh ~/.config/hypr/polybar/scripts/powermenu.sh
else
    archlinux-logout
fi
