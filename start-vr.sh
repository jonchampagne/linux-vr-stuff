#!/bin/env bash

# Enable VR mode on AMD gpu
pkexec env WAYLAND_DISPLAY="$XDG_RUNTIME_DIR/$WAYLAND_DISPLAY" XDG_RUNTIME_DIR=/run/user/0 ./enable-vr-mode.sh

# Set the default audio device to usb headphones
pactl set-default-sink `pactl list sinks short|grep KTMicro_KT_USB_Audio|cut -f1`

