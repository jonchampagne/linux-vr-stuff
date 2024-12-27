#!/usr/bin/env bash

# Disable manual override
echo "auto" | tee /sys/class/drm/card1/device/power_dpm_force_performance_level

# Set profile to DEFAULT
echo 0 | tee /sys/class/drm/card1/device/pp_power_profile_mode
