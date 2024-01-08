C=~/.config/hypr/current-wallhaven
W="`find ~/.config/hypr/wallhaven/ -name wallhaven\* | shuf -n 1`"
O=`cat $C`

set -xe

hyprctl hyprpaper preload $W
hyprctl hyprpaper wallpaper "DP-1,$W"
hyprctl hyprpaper wallpaper "HDMI-A-1,$W"
hyprctl hyprpaper unload $O

echo $W > $C
