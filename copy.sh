#!/bin/bash

cp -r ~/Pictures/Wallpapers ~/Archrice
cp -r ~/.config/polybar ~/Archrice/.config
cp  ~/.config/bspwm/bspwmrc ~/ArchRice/.config/bspwm/bspwmrc
cp  -r ~/.config/cava ~/ArchRice/.config/cava
cp  ~/.config/sxhkd/sxhkdrc ~/ArchRice/.config/sxhkd/sxhkdrc
cp  -r ~/.config/mopidy ~/ArchRice/.config/mopidy
cp  -r ~/.config/mpv ~/ArchRice/.config/mpv
cp  -r ~/.config/ranger ~/ArchRice/.config/ranger


git add .
OUTPUT="$(git status)"
echo "${OUTPUT}"
