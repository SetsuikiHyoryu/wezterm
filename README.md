# Wezterm Config

<https://wezterm.org/index.html>

## 配置文件

- 配置简述：<https://wezterm.org/config/files.html>
- 模块化：<https://wezterm.org/config/files.html#making-your-own-lua-modules>
- 详细配置：<https://wezterm.org/config/lua/config/index.html>

## 在配置文件中打印

```Lua wezterm.lua
local wezterm = require 'wezterm'
wezterm.log_info(wezterm.inspect({}))
wezterm.log_error()
```

打印的内容可以在 debug 模式中查看，  
可以通过 `Ctrl + SHIFT + L` 进入 debug 模式。

## 主题

<https://wezterm.org/colorschemes/index.html>

## Appearance

- Tab Bar: <https://wezterm.org/config/appearance.html?h=padding#tab-bar-appearance-colors>
- Widnow Padding: <https://wezterm.org/config/lua/config/window_padding.html>

## 键位

- Key Assignment 文档：<https://wezterm.org/config/lua/keyassignment/index.html>
- 检索 Key Assignment：`CTRL + SHIFT + p`
- `SUPER` 键在 Mac 中是 `command`, 在 Windows 中是 `Win`。
- `ALT` 在 Mac 中是 `option`。

**Pane:**

- 水平分割：`CTRL + ALT + SHIFT + "`
- 垂直分割：`CTRL + ALT + SHIFT + %`
- 切换 Pane：`CTRL + SHIFT + arrow`
- 调整 Pane 大小：`CTRL + ALT + SHIFT + arrow`
- 最大化 Pane（隐藏其他 Pane）：`CTRL + SHIFT + z`

**Tab:**

- 新建 Tab：`SUPER + t`
- 关闭 Tab：`SUPER + w`
- 切换 Tab：`CTRL + (SHIFT) + tab` / `SUPER + SHIFT + [/]`
- 指定 Tab：`SUPER + number`
- 重命名 Tab Name：`:!wezterm cli set-tab-title [OPTIONS] <title>`

**Window:**

- 新建 Window：`SUPER + n`

**Copy Mode:**

- Copy Mode 会使光标脱入输入状态，可以 vi 模式操作以复制文本。
- 进入 Copy Mode：`CTRL + SHIFT + x`
- 退出 Copy Mode: `q`
- 进入 Search Mode：`CTRL + SHIFT + f`
