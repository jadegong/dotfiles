------------------------------
--- WINDOWS AND WORKSPACES ---
------------------------------

-- See https://wiki.hypr.land/Configuring/Window-Rules/ for more
-- See https://wiki.hypr.land/Configuring/Workspace-Rules/ for workspace rules

-- Example windowrules that are useful
hl.window_rule({
	name = "floating-default-size",
	match = {
		float = true,
	},
	rounding = 4,
	border_size = 2,
})

hl.window_rule({ match = { class = "^((vivaldi-stable)|(google-chrome))$" }, border_size = 0 })

hl.window_rule({
	name = "floating-windows-volumectrl",
	match = {
		class = "org.pulseaudio.pavucontrol",
	},
	float = true,
	size = { 1920, 1080 },
})

hl.window_rule({
	name = "floating-windows-thunar",
	match = {
		class = "thunar",
		title = "^((Rename)|(File\\sOperation))[\\s\\S]*$",
	},
	float = true,
	-- size = {1000, 400}
})

hl.window_rule({
	name = "floating-windows-mpv",
	match = {
		class = "mpv",
	},
	float = true,
})

hl.window_rule({
	name = "floating-windows-smplayer",
	match = {
		class = "smplayer",
	},
	float = true,
	-- size = {1920, 1080}
})

hl.window_rule({
	name = "floating-windows-steam",
	match = {
		class = "steam",
	},
	float = true,
	-- size = {1920, 1080}
})

hl.window_rule({
	name = "floating-windows-satty",
	match = {
		class = "com.gabm.satty",
	},
	float = true,
	-- size = {1920, 1080}
})

hl.window_rule({
	name = "floating-windows-calculator",
	match = {
		class = "org.gnome.Calculator",
	},
	float = true,
	-- size = {1920, 1080}
})

hl.window_rule({
	name = "floating-windows-xdg",
	match = {
		class = "xdg-desktop-portal-gtk",
		title = "^((Open File)|(All Files)).*$",
	},
	float = true,
	size = { 1920, 1080 },
})

hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name = "suppress-maximize-events",
	match = {
		class = ".*",
	},

	suppress_event = "maximize",
})

hl.window_rule({
	-- Fix some dragging issues with XWayland
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = true,
		pin = false,
	},

	no_focus = true,
})

-- Hyprland-run hl.window_rule
hl.window_rule({
	name = "move-hyprland-run",

	match = {
		class = "hyprland-run",
	},

	move = { 20, "monitor_h - 120" },
	float = true,
})
