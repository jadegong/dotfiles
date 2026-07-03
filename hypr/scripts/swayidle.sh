#!/usr/bin/env bash

# 10分钟熄屏
exec /usr/bin/swayidle -w \
  timeout 600 'hyprctl dispatch "hl.dsp.dpms({ action = \"disable\" })"' \
  resume 'hyprctl dispatch "hl.dsp.dpms({ action = \"enable\" })"'
