#!/bin/bash
ICON=$HOME/.config/polybar/icon.png
TMPBG=/tmp/screen.png
scrot /tmp/screen.png
convert $TMPBG -scale 10% -scale 1000% $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
i3lock -i $TMPBG
rm /tmp/screen.png

systemctl suspend

#!/bin/bash
#scrot /tmp/screen.png
#convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
#[[ -f $1 ]] && convert /tmp/screen.png ~/.config/polybar/icon.png -gravity center -composite -matte /tmp/screen.png
#i3lock -i /tmp/screen.png
#rm /tmp/screen.png

#systemctl suspend
