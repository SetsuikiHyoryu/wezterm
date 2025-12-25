local module = {}

-- 设置标题栏边框。
--
-- 无边框最大化工作流：
--
-- 1. `window_decorations` 设为默认后 `option + 绿色按钮最大化`。
-- 2. `window_decorations` 设为 `RESIZE` 以取消边框，然后手动拉伸顶部。
-- 3. `window_decorations` 设为 `NONE` 以阻止误触。
local function set_window_decorations(config)
  config.window_decorations = 'NONE'
  config.adjust_window_size_when_changing_font_size = false
end

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
  set_window_decorations(config)
  set_tab_bar(config)
  set_window_padding(config)
end

return module
