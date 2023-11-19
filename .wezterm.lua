-- Pull in the wezterm API
local wezterm = require 'wezterm'
-- "editor.fontFamily": "Dank Mono",
-- "editor.fontFamily": "Mononoki Mono",
-- "editor.fontFamily": "JetBrains Mono",
-- "editor.fontFamily": "SF Mono",
-- "editor.fontFamily": "iA Writer Mono V",
-- "editor.fontFamily": "Input Mono",
-- "editor.fontFamily": "Lilex",
-- "editor.fontFamily": "Geist Mono",
-- This table will hold the configuration.
local config = {

}


-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- config.font = wezterm.font('Geist Mono', { weight = 'Bold' })
-- config.font = wezterm.font 'Geist Mono'
--config.font = wezterm.font 'Geist Mono'
config.font = wezterm.font 'Monaspace Radon'
config.font_size = 13.0
-- This is where you actually apply your config choices
config.color_scheme = 'GruvboxDarkHard'
-- For example, changing the color scheme:
-- config.color_scheme = 'Rydgel (terminal.sexy)'
-- config.color_scheme = 'Gruvbox Dark (Gogh)'
-- config.window_background_opacity =
-- config.window_decorations = "RESIZE"
config.window_close_confirmation = "AlwaysPrompt"
-- config.scrollback_lines = 3000
-- config.default_workspace = "main"
config.enable_tab_bar = false
config.use_fancy_tab_bar = false
-- and finally, return the configuration to wezterm


config.window_background_image = "/home/yazaldefilimone/Pictures/image.jpg"
-- config.window_background_opacity = 1
-- config.text_background_opacity = 1
config.window_background_image_hsb = {
  -- Darken the background image by reducing it to 1/3rd
  brightness = 0.3,

  -- You can adjust the hue by scaling its value.
  -- a multiplier of 1.0 leaves the value unchanged.
  hue = 1.0,

  -- You can adjust the saturation also.
  saturation = 1,
}
return config
