#!/usr/bin/env bash
killall -9 pipewire
killall -9 pipewire-pulse
killall -9 wireplumber
sleep 1
pipewire &
pipewire-pulse &
wireplumber &
