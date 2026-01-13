#!/usr/bin/env bash

# 10分钟熄屏
exec /usr/bin/swayidle -w \
    timeout 600 'niri msg action power-off-monitors' \
    resume      'niri msg action power-on-monitors'
