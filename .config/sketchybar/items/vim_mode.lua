local colors = require("colors")
local settings = require("settings")

local mode_colors = {
  I = colors.green,
  V = colors.magenta,
  R = colors.red,
  C = colors.yellow,
  N = colors.blue,
}

local mode_labels = {
  I = "I",
  V = "V",
  R = "R",
  C = "C",
  N = "N",
}

sbar.add("event", "svim_update")

local vim_mode = sbar.add("item", "vim_mode", {
  display = "active",
  position = "left",
  icon = { drawing = false },
  label = {
    font = {
      family = settings.font.text,
      style = settings.font.style_map["Bold"],
      size = 11.0,
    },
    string = "N",
    color = colors.blue,
    padding_left = settings.paddings,
    padding_right = settings.paddings,
  },
  background = {
    color = colors.bg1,
    border_color = colors.blue,
    border_width = 1,
    height = 22,
    corner_radius = 6,
  },
  padding_left = 4,
  padding_right = 4,
  drawing = false,
  updates = true,
})

vim_mode:subscribe("svim_update", function(env)
  local mode = env.MODE or ""
  local color = mode_colors[mode] or colors.white
  local label = mode_labels[mode] or mode

  if mode == "" then
    vim_mode:set({ drawing = false })
  else
    vim_mode:set({
      drawing = true,
      label = { string = label, color = color },
      background = { border_color = color },
    })
  end
end)
