#!/usr/bin/env sh

killall -q mopidy
while pgrep -u $UID -x mopidy > /dev/null; do sleep 1; done

mopidy --config ~/.config/mopidy/mopidy.conf &

echo "Mopidy Launched"
