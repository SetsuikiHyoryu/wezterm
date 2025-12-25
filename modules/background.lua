local module = {}

local function use_simple_background(config)
  config.window_background_opacity = 0.81
end

local function use_complex_background(config)
  config.background = {
    {
      source = {
        -- 必须是绝对路径。
        File = 'Users/hyoryu/dotfile/assets/neovim/n.jpeg',
        -- File = 'Users/hyoryu/dotfile/assets/neovim/【哲风壁纸】孤独摇滚-粉色动漫少女.png',
        -- 直播用：
        -- File = 'Users/hyoryu/dotfile/assets/neovim/131982759_p6.png',
      },
    },

    -- 纯色不加高宽会不生效。
    {
      source = { Color = '#100f12' },
      opacity = 0.81,
      height = '100%',
      width = '100%',
    },
  }
end

local function set_background(config, use_simple)
  if use_simple then
    use_simple_background(config)
  else
    use_complex_background(config)
  end
end

function module.apply_to_config(config)
  set_background(config, false)
  config.text_background_opacity = 0.81 -- 影响 Tab 等图案，不影响文字。
end

return module
