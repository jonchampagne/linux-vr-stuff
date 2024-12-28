#!/bin/env bash

dir=`dirname -- "$( readlink -f -- "$0"; )"`

cd $dir

# Set the default audio device to usb headphones
pactl set-default-sink `pactl list sinks short|grep KTMicro_KT_USB_Audio|cut -f1`

# Set the default audio device to bigscreen beyond mic
pactl set-default-source `pactl list sources short|grep Bigscreen_Beyond|cut -f1`

sleep 1
echo "Starting wlx-overlay-s"
wlx-overlay-s --openxr --show &

sleep 5

echo "Starting lovr-playspace"
pushd lovr-playspace
../lovr.AppImage . &
popd

# Enable VR mode on AMD gpu
pkexec env WAYLAND_DISPLAY="$XDG_RUNTIME_DIR/$WAYLAND_DISPLAY" XDG_RUNTIME_DIR=/run/user/0 `realpath ./enable-vr-mode.sh`
