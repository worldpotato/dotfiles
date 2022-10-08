#!/bin/bash
# $HOME/.config/polybar/launch.sh & 2&> /dev/null
/usr/bin/nm-applet & 2&> /dev/null
/usr/bin/dunst &

# lock the screen after 5 min
xset s 300

/usr/bin/thunderbird & 2&> /dev/null
/usr/bin/firefox & 2&> /dev/null

# $HOME/.screenlayout/tripple_monitor.sh
xrandr --dpi 94
$HOME/.local/share/background/setbg & 2&> /dev/null # set desktop background &

# because it needs that for some reason...
sleep 10
bluetoothctl power on
# bluetoothctl power on 2&> /dev/null
