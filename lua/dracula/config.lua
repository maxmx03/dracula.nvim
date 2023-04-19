local colors = require("dracula.palettes")
local utils = require("dracula.utils")

local M = {}

function M:new()
  local config = {
    soft = {
      enabled = false,
      amount = 10,
    },
    transparent = false,
    dracula_pro = false,
    colors = colors,
    user_config = {},
  }

  setmetatable(config, self)
  self.__index = self

  return config
end

function M:set_colors()
  if self.soft.enabled then
    for i, color in ipairs(self.colors) do
      if string.match(color, "^#([A-Fa-f0-9]+)$") then
        local new_color = utils.reduce_saturation(color, self.soft.amount)
        self.colors[i] = new_color
      end
    end
  end
end

function M:set_user_colors()
  if self.user_config.colors then
    if vim.tbl_isempty(self.colors) then
      return
    end

    if type(self.user_config.colors) == "table" then
      self.colors = vim.tbl_extend("force", self.colors, self.user_config.colors)
      return
    end

    self.colors = vim.tbl_extend("force", self.colors, self.user_config.colors(self.colors))
  end
end

function M:set_soft(soft)
  if soft and soft.enabled then
    self.soft.enabled = true
    return
  end

  self.soft.enabled = false
end

function M:set_transparent(transparent)
  if transparent then
    self.transparent = transparent
    return
  end

  self.transparent = false
end

function M:call_user_callback(cb)
  if type(cb) == "function" then
    cb(self.colors)
  end
end

function M:set_draculapro(dracula_pro)
  if dracula_pro then
    self.dracula_pro = true
    return
  end

  self.dracula_pro = false
end

return M
