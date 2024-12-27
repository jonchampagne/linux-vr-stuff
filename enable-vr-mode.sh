#!/usr/bin/env bash

# Enable manual override
echo "manual" | tee /sys/class/drm/card1/device/power_dpm_force_performance_level

# Translate "VR" into profile number
vr_profile=$(cat /sys/class/drm/card1/device/pp_power_profile_mode | grep ' VR ' | awk '{ print $1; }')

# Set profile to VR
echo $vr_profile | tee /sys/class/drm/card1/device/pp_power_profile_mode
