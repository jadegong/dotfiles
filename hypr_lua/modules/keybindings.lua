-------------------
--- KEYBINDINGS ---
-------------------

local ipc = "noctalia msg "

-- See https://wiki.hypr.land/Configuring/Keywords/
hl.bind("SUPER + Return", hl.dsp.exec_cmd(Terminal))
hl.bind("SUPER + Q", hl.dsp.window.close(), { description = "Window: Close" })
hl.bind("SUPER + E", hl.dsp.exec_cmd(FileManager))
hl.bind("SUPER + Space", hl.dsp.window.float({ action = "toggle" }), { description = "Window: Float/Tile" })
hl.bind("SUPER + D", hl.dsp.exec_cmd(ipc .. "panel-toggle launcher"))
hl.bind("SUPER + comma", hl.dsp.exec_cmd(ipc .. "settings-toggle"))
hl.bind(
	"SUPER + SHIFT + F",
	hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }),
	{ description = "Window: Fullscreen" }
)
hl.bind("SUPER + F", hl.dsp.layout("colresize 1.0"))
-- hl.bind(
-- 	"SUPER + X",
-- 	hl.dsp.exec_cmd(
-- 		"grim $(xdg-user-dir PICTURES)/Screenshots/$(date +'%F_%T_grim.png') && notify-send -a grim -i /home/jade/.config/mako/icons/screenshot-icon.png \"Screenshots saved to:\" \"~/Pictures/Screenshots/$(date +'%F_%T_grim.png')\""
-- 	)
-- )
hl.bind("SUPER + X", hl.dsp.exec_cmd(ipc .. "screenshot-fullscreen pick"))
-- hl.bind(
-- 	"SUPER + ALT + X",
-- 	hl.dsp.exec_cmd(
-- 		'grim -g "$(slurp)" $(xdg-user-dir PICTURES)/Screenshots/$(date +\'%F_%T_grim.png\') && notify-send -a grim -i /home/jade/.config/mako/icons/screenshot-icon.png "Screenshots saved to:" "~/Pictures/Screenshots/$(date +\'%F_%T_grim.png\')"'
-- 	)
-- )
hl.bind("SUPER + ALT + X", hl.dsp.exec_cmd(ipc .. "screenshot-region"))
hl.bind(
	"SUPER + SHIFT + X",
	hl.dsp.exec_cmd(
		"hyprctl -j activewindow | jq -r '\"\\(.at[0]),\\(.at[1]) \\(.size[0])x\\(.size[1])\"' | grim -g - $(xdg-user-dir PICTURES)/Screenshots/$(date +'%F_%T_grim.png') && notify-send -a grim -i /home/jade/.config/mako/icons/screenshot-icon.png \"Screenshots saved to:\" \"~/Pictures/Screenshots/$(date +'%F_%T_grim.png')\""
	)
)
hl.bind("SUPER + SHIFT + ALT + X", hl.dsp.exec_cmd('grim -g "$(slurp)" - | satty -f -'))
-- hl.bind("SUPER + ALT + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind("SUPER + ALT + L", hl.dsp.exec_cmd(ipc .. "session lock"))
-- hl.bind("SUPER + SHIFT + V", hl.dsp.exec_cmd("/home/jade/.config/hypr/scripts/cliphist-fuzzel-img"))
hl.bind("SUPER + SHIFT + V", hl.dsp.exec_cmd(ipc .. "panel-toggle clipboard"))

-- Move focus
hl.bind("SUPER + Left", hl.dsp.layout("focus left"))
hl.bind("SUPER + Right", hl.dsp.layout("focus right"))
hl.bind("SUPER + Up", hl.dsp.layout("focus up"))
hl.bind("SUPER + Down", hl.dsp.layout("focus down"))
hl.bind("SUPER + H", hl.dsp.layout("focus left"))
hl.bind("SUPER + L", hl.dsp.layout("focus right"))
hl.bind("SUPER + K", hl.dsp.layout("focus up"))
hl.bind("SUPER + J", hl.dsp.layout("focus down"))
-- Move focus window
hl.bind("SUPER + SHIFT + Left", hl.dsp.window.swap({ direction = "l" }))
hl.bind("SUPER + SHIFT + Right", hl.dsp.window.swap({ direction = "r" }))
hl.bind("SUPER + SHIFT + Up", hl.dsp.window.move({ direction = "u" }))
hl.bind("SUPER + SHIFT + Down", hl.dsp.window.move({ direction = "d" }))
hl.bind("SUPER + SHIFT + H", hl.dsp.window.swap({ direction = "l" }))
hl.bind("SUPER + SHIFT + L", hl.dsp.window.swap({ direction = "r" }))
hl.bind("SUPER + SHIFT + K", hl.dsp.window.move({ direction = "u" }))
hl.bind("SUPER + SHIFT + J", hl.dsp.window.move({ direction = "d" }))

-- Switch workspaces with mainMod + [0-9]
hl.bind("SUPER + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind("SUPER + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind("SUPER + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind("SUPER + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind("SUPER + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind("SUPER + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind("SUPER + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind("SUPER + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind("SUPER + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind("SUPER + 0", hl.dsp.focus({ workspace = 10 }))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]
hl.bind("SUPER + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind("SUPER + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind("SUPER + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind("SUPER + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind("SUPER + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))
hl.bind("SUPER + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))
hl.bind("SUPER + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))
hl.bind("SUPER + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))
hl.bind("SUPER + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))
hl.bind("SUPER + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

-- To see the hidden window and workspace you can use:
hl.bind("SUPER + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind("SUPER + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))
-- Scroll through existing workspaces with mainMod + scroll
hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true, description = "Window: Move" })
hl.bind("SUPER + mouse:274", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true, description = "Window: Resize" })

-- Resize windows with mainMod + R
hl.bind("SUPER + R", hl.dsp.submap("resize"))
-- resize submap
hl.define_submap("resize", function()
	-- Set repeating binds for resizing the active window.
	hl.bind("right", hl.dsp.window.resize({ x = 192, y = 0, relative = true }), { repeating = true })
	hl.bind("left", hl.dsp.window.resize({ x = -192, y = 0, relative = true }), { repeating = true })
	hl.bind("up", hl.dsp.window.resize({ x = 0, y = 192, relative = true }), { repeating = true })
	hl.bind("down", hl.dsp.window.resize({ x = 0, y = -192, relative = true }), { repeating = true })
	hl.bind("L", hl.dsp.window.resize({ x = 192, y = 0, relative = true }), { repeating = true })
	hl.bind("H", hl.dsp.window.resize({ x = -192, y = 0, relative = true }), { repeating = true })
	hl.bind("K", hl.dsp.window.resize({ x = 0, y = 192, relative = true }), { repeating = true })
	hl.bind("J", hl.dsp.window.resize({ x = 0, y = -192, relative = true }), { repeating = true })
	-- Use `reset` to go back to the global submap
	hl.bind("escape", hl.dsp.submap("reset"))
	hl.bind("Return", hl.dsp.submap("reset"))
	hl.bind("SUPER + R", hl.dsp.submap("reset"))
end)
hl.bind("SUPER + Equal", hl.dsp.layout("colresize +conf"))
hl.bind("SUPER + Minus", hl.dsp.layout("colresize -conf"))

-- multimedia keys
-- hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("/home/jade/.config/mako/wp-vol --inc"))
-- hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("/home/jade/.config/mako/wp-vol --dec"))
-- hl.bind("XF86AudioMute", hl.dsp.exec_cmd("/home/jade/.config/mako/wp-vol --toggle"))
-- hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("/home/jade/.config/mako/wp-vol --toggle-mic"))
-- hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"))
-- hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"))
-- -- Requires playerctl
-- hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))
-- hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))
-- hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"))
-- hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. "volume-up"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. "volume-down"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. "volume-mute"))
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd(ipc .. "mic-mute"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. "brightness-up"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. "brightness-up"))
-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd(ipc .. "media next"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd(ipc .. "media previous"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd(ipc .. "media pause"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd(ipc .. "media play"))
