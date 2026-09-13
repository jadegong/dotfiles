-----------------
--- AUTOSTART ---
-----------------

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:

-- exec-once = $terminal
-- exec-once = nm-applet &
-- exec-once = waybar & hyprpaper & firefox

hl.on("hyprland.start", function()
	-- hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
	-- hl.exec_cmd("systemctl --user start hyprpolkitagent.service")
	hl.exec_cmd("noctalia")
	-- hl.exec_cmd("waybar")
	-- hl.exec_cmd("mako")
	-- hl.exec_cmd("nm-applet & blueman-applet")
	hl.exec_cmd("fcitx5 -d")
	-- hl.exec_cmd("wl-paste --watch cliphist -max-items 50 store")
	-- hl.exec_cmd("hyprpaper")
	-- hl.exec_cmd("hypridle")
	-- hl.exec_cmd("/home/jade/.config/hypr/scripts/swayidle.sh")
end)
