-----------------------------
--- ENVIRONMENT VARIABLES ---
-----------------------------

-- See https://wiki.hypr.land/Configuring/Environment-variables/

hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("XCURSOR_THEME", "catppuccin-macchiato-green-cursors")
hl.env("XCURSOR_SIZE", "28")
hl.env("HYPRCURSOR_THEME", "catppuccin-macchiato-green-cursors")
hl.env("HYPRCURSOR_SIZE", "28")
hl.env("XMODIFIERS", "@im=fcitx")
hl.env("QT_IM_MODULES", "wayland;fcitx")
