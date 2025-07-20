#!/usr/bin/env bash
set -x
killall -9e pipewire pipewire-pulse wireplumber
sleep 1
pipewire & pipewire-pulse & wireplumber &
