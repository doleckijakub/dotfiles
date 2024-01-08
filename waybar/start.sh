#!/usr/bin/env sh

set -x

pgrep waybar | xargs kill -9

set -e

waybar -c $HOME/.config/waybar/config-top.jsonc &
waybar -c $HOME/.config/waybar/config-bottom.jsonc &

wait
