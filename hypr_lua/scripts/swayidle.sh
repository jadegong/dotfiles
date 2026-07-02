#!/usr/bin/env bash

# 10分钟熄屏
exec /usr/bin/swayidle -w \
  timeout 600 'hyprctl dispatch dpms off' \
  resume 'hyprctl dispatch dpms on'
