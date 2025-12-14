local module = {}

function module.apply_to_config(config)
  config.background = {
    {
      source = {
        -- 必须是绝对路径。
        File = 'Users/hyoryu/dotfile/assets/neovim/n.jpeg',
        -- 直播用：
        -- File = 'Users/hyoryu/dotfile/assets/neovim/d.png',
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

return module
