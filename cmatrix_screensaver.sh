#!/usr/bin/env bash
# The sleep is because some keypresses or signals are coming through? idk...
#   without it cmatrix -s exits instantly because it thinks it saw a keypress
# -s: screensaver mode (exit on any keypress)
# -a: asynchronous (lines scroll down at a different rate, it's pretty)
# -b: some characters are bold
# -u 2: speed up a little bit
exec kitty --start-as=fullscreen --class="Screensaver" bash -c "sleep 0.2 && exec cmatrix -s -ab -u 2"
