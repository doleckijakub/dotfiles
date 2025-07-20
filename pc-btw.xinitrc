setxkbmap pl

xrandr --output DisplayPort-2 --primary --left-of HDMI-A-0 # default
# xrandr --output HDMI-A-0 --same-as DisplayPort-2 # recording hdmi

# xcompmgr &
# picom --config ~/.config/picom.conf --backend glx 

feh --no-fehbg --bg-fill .config/wallpapers/wallhaven-e726ko.jpg &
.config/scripts/init_pipewire.sh &
.config/scripts/init_dunst.sh &

exec bspwm
# exec dwm
