local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Default Shell
config.default_prog = { '/opt/homebrew/bin/nu' }

-- Modules
require('modules.appearance').apply_to_config(config)
require('modules.background').apply_to_config(config)
require('modules.bell').apply_to_config(config)
require('modules.colorscheme').apply_to_config(config)
require('modules.font').apply_to_config(config)
require('modules.keymap').apply_to_config(config)

return config
