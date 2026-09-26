#!/usr/bin/env bash
# -p: num pipes
# -c: colors (0=black might blend in with the terminal background too much)
# -R: randomize
# -s probability of straight fitting (bump up a little bit for a larger screen)
cmd="pipes -p 3 -c1 -c2 -c3 -c4 -c5 -c6 -c7 -R -s 15"
exec kitty --start-as=fullscreen --class="Screensaver" bash -c "sleep 0.2 && exec ${cmd}"
