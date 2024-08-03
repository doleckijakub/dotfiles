#!/usr/bin/env bash
dbus-daemon --session --address=unix:path=$XDG_RUNTIME_DIR/bus &
sleep 1
dunst &
