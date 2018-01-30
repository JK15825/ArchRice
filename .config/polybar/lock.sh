#!/bin/bash
if [ "$1" == "lock" ]; then
ICON=$HOME/.config/polybar/icon.png
TMPBG=/tmp/screen.png
scrot /tmp/screen.png
convert $TMPBG -scale 5% -scale 2000% $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
i3lock -i $TMPBG --indicator --radius=240 --insidecolor=00000000 --ringcolor=12211ee6 --bshlcolor=ff6961ff --keyhlcolor=6ea498ff
rm /tmp/screen.png

mpc pause 

fi

if [ "$1" == "system" ]; then
#ICON=$HOME/.config/polybar/icon.png
#TMPBG=/tmp/screen.png
#scrot /tmp/screen.png
#convert $TMPBG -scale 5% -scale 2000% $TMPBG
#convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
#pkill i3lock
#STATE=$(pgrep i3lock)
#echo "$STATE"
#if [[ ${STATE[@]} < 0 || ${STATE[@]} == 0 ]]; then
    i3lock \
        -i /home/jkaspar/.config/polybar/rebuilt.png  \
        --indicator --radius=256 --insidecolor=00000000 \
        --ringcolor=12211ee6 --bshlcolor=ff6961ff --keyhlcolor=6ea498ff \
        --insidewrongcolor=ff696131 --insidevercolor=aec6cf31 \
        --ringvercolor=aec6cf31 --veriftext="" --wrongtext="" \
        --timepos="x+20:h-ch-20" --clock --timesize="88" \
        --datesize="28" --timecolor=6ea498ff --datecolor=6ea498ff
#fi
    #rm /tmp/screen.png
#mpc pause 
fi


#if [ "$1" == "system" ]; then
#ICON=/home/jkaspar/.config/polybar/iconsmall.png
#TMPBG=/tmp/screen.png
#cp /home/jkaspar/Pictures/fuckoff.png /tmp/screen.png
#convert $TMPBG $ICON -gravity SouthWest -composite -matte $TMPBG
#i3lock -i $TMPBG --indicator --radius=240 --insidecolor=00000000 --ringcolor=12211ee6 --bshlcolor=ff6961ff --keyhlcolor=6ea498ff
#fi
#!/bin/bash
#scrot /tmp/screen.png
#convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
#[[ -f $1 ]] && convert /tmp/screen.png ~/.config/polybar/icon.png -gravity center -composite -matte /tmp/screen.png
#i3lock -i /tmp/screen.png
#rm /tmp/screen.png

#systemctl suspend
