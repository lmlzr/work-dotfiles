-- Autostart
hl.on("hyprland.start", function () 
  hl.exec_cmd("kanshi")
  hl.exec_cmd("waybar") -- starting with waybar
  hl.exec_cmd("hyprpaper") -- starting with waybar
  hl.exec_cmd("syncthing-start")
  -- hl.exec_cmd("waybar & hyprpaper & firefox") -- Execute waybar, hyprpaper, firefox
end)

-- Keyboard layout
hl.config({
    input = {
        kb_layout  = "de",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",
        follow_mouse = 1,
        sensitivity = -0.25, -- -1.0 - 1.0, 0 means no modification.
        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

require("configs/keybinds")
require("configs/style")
require("configs/plugins")
