#!/usr/bin/env bash
# The sleep is to slurp up errant keypresses (signals? idk why it happens)
exec kitty --start-as=fullscreen --class="Screensaver" bash -c "sleep 0.2 && exec cbonsai --live --screensaver --infinite --life=50 --wait=2.00"
