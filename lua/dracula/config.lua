local colors = require 'dracula.palettes'
local utils = require 'dracula.utils'

local M = {}

function M:new()
  local config = {
    saturation = {
      enabled = false,
      amount = 10,
    },
    soft = false,
    transparent = false,
    dracula_pro = nil,
    colors = colors,
    user_config = {},
  }

  setmetatable(config, self)
  self.__index = self

  return config
end

function M:set_colors()
  if not self.soft then
    return
  end

  self.colors = require 'dracula.palettes.soft'
end

function M:change_colors_saturation()
  if self.saturation.enabled then
    for i, color in pairs(self.colors) do
      local new_color = utils.reduce_saturation(color, self.saturation.amount)

      self.colors[i] = new_color
    end
  end
end

function M:set_user_colors()
  if self.user_config.colors then
    if vim.tbl_isempty(self.colors) then
      return
    end

    if type(self.user_config.colors) == 'table' then
      self.colors = vim.tbl_extend('force', self.colors, self.user_config.colors)
      return
    end

    self.colors = vim.tbl_extend('force', self.colors, self.user_config.colors(self.colors))
  end
end

function M:set_soft(soft)
  if soft then
    self.soft = true
    return
  end

  self.soft = false
end

function M:set_saturation(saturation)
  if not saturation then
    return
  end

  if saturation.enabled then
    self.saturation.enabled = true

    if type(saturation.amount) == 'number' then
      self.saturation.amount = saturation.amount
    end
  else
    self.saturation.enabled = false
  end
end

function M:set_transparent(transparent)
  if transparent then
    self.transparent = transparent
    return
  end

  self.transparent = false
end

function M:call_user_callback(cb)
  if type(cb) == 'function' then
    cb(self.colors)
  end
end

function M:set_draculapro(dracula_pro)
  if dracula_pro then
    self.dracula_pro = dracula_pro
  end
end

return M
