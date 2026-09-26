#!/usr/bin/env bash
# start a busyloop of sl in a child process
# kill the sl subprocess on keypress
read -r -d '' SL_RUNNER << 'EOF'
#!/usr/bin/env bash
cmd="while true; do sl -e; done"
setsid bash -c "$cmd" &
pid=$!
cleanup()
{
    kill -9 -- "-$pid" 2>/dev/null
    wait "$pid" 2>/dev/null
    exit 0
}
trap cleanup INT
read -n 1 -s
cleanup
EOF

exec kitty --start-as=fullscreen --class="Screensaver" bash -c "${SL_RUNNER}"
