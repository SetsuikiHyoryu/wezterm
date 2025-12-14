local module = {}

local function create_tab_bar_colors()
  return {
    background = '#fa85ba',

    active_tab = {
      bg_color = '#ffa6c9',
      fg_color = '#333333',
    },

    inactive_tab = {
      bg_color = '#fa85ba',
      fg_color = '#333333',
    },

    inactive_tab_hover = {
      bg_color = '#fa85ba',
      fg_color = '#000000',
    },

    new_tab = {
      bg_color = '#fa85ba',
      fg_color = '#333333',
    },

    new_tab_hover = {
      bg_color = '#fa85ba',
      fg_color = '#000000',
    },
  }
end

function module.apply_to_config(config)
  config.color_scheme = 'Tokyo Night'

  config.colors = {
    cursor_bg = '#fbaed2',
    tab_bar = create_tab_bar_colors(),
  }
end

return module
