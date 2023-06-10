#!/usr/bin/env sh

# More info : https://github.com/jaagr/polybar/wiki

killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

desktop=$(echo $DESKTOP_SESSION)

case $desktop in
    hypr|/usr/share/xsessions/hypr)
      #dual screen is not possible in Hypr
      for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar --reload mainbar0 -c ~/.config/hypr/polybar/polybartop.config &
        MONITOR=$m polybar --reload mainbar0 -c ~/.config/hypr/polybar/polybarbottom.config &
      done
esac
