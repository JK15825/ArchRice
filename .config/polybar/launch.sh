#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
string=$(uname -r)
if [[ $string = *"lts"* ]]; then
    polybar bottom -c /home/jkaspar/.config/polybar/config-lts
else
    polybar bottom &
fi 
polybar bottom &

echo "Bars launched..."
