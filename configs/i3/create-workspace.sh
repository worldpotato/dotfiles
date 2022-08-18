#!/bin/bash

i3-msg "workspace ; append_layout ~/.config/i3/workspace-clean.json"

alacritty &
alacritty -e /usr/bin/gotop &
alacritty -e /usr/bin/tty-clock -sbcDC2 -f %d.%m.%Y &

i3-msg restart
