local module = {}
local wezterm = require 'wezterm'

-- 检查可用字体：
-- `wezterm ls-fonts --list-system | grep Fira`
--
-- 结果：
-- wezterm.font("FiraCode Nerd Font Mono", {weight=450, stretch="Normal", style="Normal"})
-- (AKA: FiraCode Nerd Font Mono Ret) /Users/hyoryu/Library/Fonts/FiraCodeNerdFontMono-Retina.ttf, CoreText
local function set_font_family(config)
  config.font = wezterm.font_with_fallback {
    { family = 'FiraCode Nerd Font Mono', weight = 450 },
    'Source Han Sans',
  }
end

function module.apply_to_config(config)
  set_font_family(config)
  config.font_size = 20
end

return module
