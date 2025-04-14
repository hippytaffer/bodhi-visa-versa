#!/bin/bash
# Copyright 2025 Bodhi Linux

printf "\n\033[1;33mWARNING:\033[0m For use with Bodhi Linux 7 only.\n\n"
cd bodhi-vice-versa
sed -i \
    -e 's/item: "gtk-theme" *"[^"]*"/item: "gtk-theme"     "MokshaViceVersa-GTK"/' \
    -e 's/item: "icon-theme" *"[^"]*"/item: "icon-theme"    "MokshaViceVersa-Icons"/' \
    dark_revolution.edc
./build.sh
git restore dark_revolution.edc
cd ..
