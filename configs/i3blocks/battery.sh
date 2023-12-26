#!/usr/bin/env bash

BAT=$(acpi -b | grep -E -o '[0-9][0-9]?%')
CHARGING=$(acpi -a | grep -E -o 'on')
COLOR="#FFFFFF"

# Full and short texts
echo "Battery: $BAT"
echo "BAT: $BAT"

[ ${BAT%?} -le 20 ] && COLOR="#FF8000"

if [ "$CHARGING" = "on" ]; then
  COLOR="#00AA00"
fi

# Set urgent flag below 5% or use orange below 20%
[ ${BAT%?} -le 5 ] && exit 33
echo "$COLOR"

exit 0
