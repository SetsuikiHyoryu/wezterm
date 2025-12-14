local module = {}

local function set_tab_bar(config)
  -- config.enable_tab_bar = false
  config.use_fancy_tab_bar = false
  config.tab_bar_at_bottom = true
end

local function set_window_padding(config)
  config.window_padding = {
    bottom = 0,
    left = 0,
    right = 0,
    top = 0,
  }
end

function module.apply_to_config(config)
  set_tab_bar(config)
  set_window_padding(config)
end

return module
