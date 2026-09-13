----------------
--- MONITORS ---
----------------

-- See https://wiki.hypr.land/Configuring/Monitors/
-- monitor=,preferred,auto,auto

hl.monitor({
	output = "DP-2",
	mode = "2560x1440@165.00",
	position = "0x0",
	scale = 1,
})
hl.monitor({
	output = "DP-3",
	mode = "3840x2160@165.00",
	position = "2560x0",
	scale = 1,
})
