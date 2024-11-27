local icons = require("icons")
local colors = require("colors")
local settings = require("settings")

local focus = sbar.add("item", "widgets.focus", {
  position = "right",
  -- update_freq = 1,
  -- script = "$CONFIG_DIR/helpers/focus_mode.sh",
  drawing = false,
  icon = {
    string = icons.focus.on,
    font = {
      style = settings.font.style_map["Regular"],
      size = 14.0,
    },
    padding_right = 8,
    padding_left = 8,
  },
  label = { drawing = false },
  padding_right = 2,
  padding_left = 1
})

-- focus:subscribe("mouse.clicked", function(env)
--     focus:set({ label = { drawing = "toggle", string = "XXX" } })
--     sbar.exec("shortcuts run 'toggle focus'")    
-- end)

sbar.add("bracket", "widgets.focus.bracket", { focus.name }, {
  background = { color = colors.bg1 }
})

sbar.add("item", "widgets.focus.padding", {
  position = "right",
  width = settings.group_paddings
})
