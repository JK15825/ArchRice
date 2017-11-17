#!/bin/bash

cp ~/Pictures/background.jpg ~/ArchRice
cp -r ~/.config/polybar ~/ArchRice/.config
cp -r ~/.config/bspwm/bspwmrc ~/ArchRice/.config/bspwm
cp -r ~/.config/cava ~/ArchRice/.config/cava
cp ~/.config/sxhkd/sxhkdrc ~/ArchRice/.config/sxhkd/sxhkdrc
cp -r ~/.config/mpv ~/ArchRice/.config/mpv
cp -r ~/.config/ranger ~/ArchRice/.config/ranger
cp ~/.config/rofi/config.rasi ~/ArchRice/.config/rofi 

pacaur -Qqe > packages.txt

git add .
OUTPUT="$(git status)"
echo "${OUTPUT}"
git commit
git push origin master
