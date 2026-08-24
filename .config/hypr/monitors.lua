-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and supported resolutions with: hyprctl monitors all

hl.env("GDK_SCALE", "2")

-- Internal Laptop Display
hl.monitor({ output = "eDP-1", mode = "preferred", position = "auto", scale = 1.6 })

-- External Display (HDMI)
hl.monitor({ output = "HDMI-A-1", mode = "preferred", position = "auto", scale = 1 })

-- Default fallback for any other connected display
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = 1.6 })
