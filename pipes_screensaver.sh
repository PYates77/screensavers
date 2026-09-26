#!/usr/bin/env bash
alts=("pipes.sh" "pipes")

for cmd in "${alts[@]}"; do
  if command -v "$cmd" &> /dev/null; then
    PIPES="$cmd"
    break
  fi
done

# Run the found command if it exists
if [ -z "$PIPES" ]; then
  echo "Could not locate pipes. Searched in [ ${alts[@]} ]"
  exit 1
fi

# -p: num pipes
# -c: colors (0=black might blend in with the terminal background too much)
# -R: randomize
# -s probability of straight fitting
cmd="${PIPES} -p 3 -c1 -c2 -c3 -c4 -c5 -c6 -c7 -R -s 15"
exec kitty --start-as=fullscreen --class="Screensaver" bash -c "sleep 0.2 && exec ${cmd}"
