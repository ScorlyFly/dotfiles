#!/bin/bash
export HYPRLAND_INSTANCE_SIGNATURE=$(ls -t /run/user/$(id -u)/hypr/ | head -n 1)
hyprctl dispatch "hl.plugin.scrolloverview.overview('toggle all')"
