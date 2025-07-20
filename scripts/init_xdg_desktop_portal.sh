#!/usr/bin/env bash
set -x
sleep 5
killall -9e xdg-desktop-portal-hyprland xdg-desktop-portal-wlr xdg-desktop-portal
/usr/lib/xdg-desktop-portal-hyprland &
sleep 2
/usr/lib/xdg-desktop-portal &
