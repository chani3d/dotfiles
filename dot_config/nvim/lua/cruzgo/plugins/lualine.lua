local status, lualine = pcall(require, "lualine")
if not status then
  return
end

local lualine_nightfly = require("lualine.themes.nightfly")

local new_colors = {
  blue = "#65D1FF",
  green = "#3EFFDC",
  violet = "#FF61EF",
  yellow = "#FFDA7B",
  black = "#000000",
}

lualine_nightfly.normal.a.bg = new_colors.blue -- color in normal mode
lualine_nightfly.insert.a.bg = new_colors.green -- color in insert mode
lualine_nightfly.visual.a.bg = new_colors.violet -- color in visual mode
lualine_nightfly.command = {
  a = {
    gui = "bold",
    bg = new_colors.yellow,
    fg = new_colors.black,
  },
}


lualine.setup({
  options = {
    theme = lualine_nightfly
  }
})
