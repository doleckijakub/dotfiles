#/usr/bin/env bash
killall -9 waybar

waybar -s $HOME/.config/waybar/style.css -c $HOME/.config/waybar/config-top.jsonc &
waybar -s $HOME/.config/waybar/style.css -c $HOME/.config/waybar/config-bottom.jsonc &

