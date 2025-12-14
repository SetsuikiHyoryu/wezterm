local module = {}
local wezterm = require 'wezterm'
local act = wezterm.action

function module.apply_to_config(config)
  config.keys = {
    -- Pane Cotrol
    { key = 'H', mods = 'SHIFT|SUPER', action = act.ActivatePaneDirection 'Left' },
    { key = 'H', mods = 'SHIFT|ALT|SUPER', action = act.AdjustPaneSize { 'Left', 1 } },
    { key = 'L', mods = 'SHIFT|SUPER', action = act.ActivatePaneDirection 'Right' },
    { key = 'L', mods = 'SHIFT|ALT|SUPER', action = act.AdjustPaneSize { 'Right', 1 } },
    { key = 'K', mods = 'SHIFT|SUPER', action = act.ActivatePaneDirection 'Up' },
    { key = 'K', mods = 'SHIFT|ALT|SUPER', action = act.AdjustPaneSize { 'Up', 1 } },
    { key = 'J', mods = 'SHIFT|SUPER', action = act.ActivatePaneDirection 'Down' },
    { key = 'J', mods = 'SHIFT|ALT|SUPER', action = act.AdjustPaneSize { 'Down', 1 } },

    -- Tab Name
    -- See: https://github.com/wezterm/wezterm/issues/522#issuecomment-1496894508
    --
    -- 不过也可以调用外部命令：
    -- `:!wezterm cli set-tab-title [OPTIONS] <title>`
    -- See: https://wezterm.org/cli/cli/set-tab-title.html
    {
      key = 'E',
      mods = 'CTRL|SHIFT',
      action = act.PromptInputLine {
        description = 'Enter new name for tab',
        action = wezterm.action_callback(function(window, pane, line)
          -- line will be `nil` if they hit escape without entering anything
          -- An empty string if they just hit enter
          -- Or the actual line of text they wrote
          if line then
            window:active_tab():set_title(line)
          end
        end),
      },
    },
  }
end

return module
