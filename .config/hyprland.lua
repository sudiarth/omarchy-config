-- Learn how to configure Hyprland: https://wiki.hypr.land/Configuring/Start/

-- Omarchy's bootstrap keeps path setup out of this user config.
dofile((os.getenv("OMARCHY_PATH") or "/usr/share/omarchy") .. "/default/hypr/bootstrap.lua")

-- Disable all Omarchy default bindings. Add your own in hypr/bindings.lua.
-- omarchy_default_bindings = false
--
-- Or disable only bindings for Omarchy's preinstalled apps/web apps while
-- keeping core window-manager bindings:
-- omarchy_preinstalled_bindings = false

-- Load Omarchy defaults.
require("default.hypr.omarchy")

-- Ensure ~/.local/bin takes precedence in PATH
local home = os.getenv("HOME") or "/home/sudi"
local user_bin = home .. "/.local/bin"
local cur_path = os.getenv("PATH") or "/usr/local/bin:/usr/bin"
local kept_path = {}
for entry in cur_path:gmatch("[^:]+") do
  if entry ~= user_bin then table.insert(kept_path, entry) end
end
table.insert(kept_path, 1, user_bin)
hl.env("PATH", table.concat(kept_path, ":"))

-- Put your personal overrides in these files. They're loaded after Omarchy's
-- defaults so package updates can improve the defaults without rewriting your
-- ~/.config/hypr files.
require("hypr.monitors")
require("hypr.input")
require("hypr.bindings")
require("hypr.looknfeel")
require("hypr.autostart")

-- Toggle config flags dynamically.
require("default.hypr.toggles")

-- Add any other personal Hyprland configuration below.
-- o.window("qemu", { workspace = "5" })
