local module = {}

-- See: <https://wezterm.org/config/lua/config/audible_bell.html>
local function set_audible_bell(config)
  config.audible_bell = 'Disabled'
end

function module.apply_to_config(config)
  set_audible_bell(config)
end

return module
