#!/bin/bash

cp -r ~/Pictures/Wallpapers ~/Archrice
cp -r ~/.config/polybar ~/Archrice/.config
cp ~/.config/bspwm/bspwmrc ~/ArchRice/.config/bspwm/bspwmrc
cp -r ~/.config/cava ~/ArchRice/.config/cava
cp ~/.config/sxhkd/sxhkdrc ~/ArchRice/.config/sxhkd/sxhkdrc
cp -r ~/.config/mpv ~/ArchRice/.config/mpv
cp -r ~/.config/ranger ~/ArchRice/.config/ranger
cp ~/.config/rofi/config.rasi ~/ArchRice/.config/rofi 

git add .
OUTPUT="$(git status)"
echo "${OUTPUT}"
git commit
git push origin master
