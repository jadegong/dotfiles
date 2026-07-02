-- This is an example Hyprland config file.
-- Refer to the wiki for more information.
-- https://wiki.hypr.land/Configuring/

-- Please note not all available settings / options are set here.
-- For a full list, see the wiki

-- You can split this configuration into multiple files
-- Create your files separately and then link them to this file like this:
-- source = ~/.config/hypr/myColors.conf

local colors = require("macchiato")
require("modules/monitors")
require("modules/programs")
require("modules/autostart")
require("modules/env")
require("modules/permissions")
require("modules/lookfeel")
require("modules/input")
require("modules/cursor")
require("modules/keybindings")
require("modules/windowsworkspaces")
