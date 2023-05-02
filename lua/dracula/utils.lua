local M = {}

function M.get_hl(group_name)
  local group = vim.api.nvim_get_hl(0, { name = group_name, link = false })

  if type(group) == 'table' then
    return group
  end

  return nil
end

function M.update_highlight_groups(groups)
  if not groups then
    return
  end

  for group_name, val in pairs(groups) do
    local group_val = M.get_hl(group_name)

    if type(group_val) == 'table' then
      local value = vim.tbl_extend('force', group_val, val)

      vim.api.nvim_set_hl(0, group_name, value)
    end
  end
end

local function hsl_to_rgb(h, s, l)
  local r, g, b = 0, 0, 0

  if s == 0 then
    r, g, b = l, l, l
  else
    local function hue_to_rgb(p, q, t)
      if t < 0 then
        t = t + 1
      end
      if t > 1 then
        t = t - 1
      end
      if t < 1 / 6 then
        return p + (q - p) * 6 * t
      end
      if t < 1 / 2 then
        return q
      end
      if t < 2 / 3 then
        return p + (q - p) * (2 / 3 - t) * 6
      end
      return p
    end

    local q = l < 0.5 and l * (1 + s) or l + s - l * s
    local p = 2 * l - q

    r = hue_to_rgb(p, q, h + 1 / 3)
    g = hue_to_rgb(p, q, h)
    b = hue_to_rgb(p, q, h - 1 / 3)
  end

  return math.floor(r * 255 + 0.5), math.floor(g * 255 + 0.5), math.floor(b * 255 + 0.5)
end

local function rgb_to_hsl(r, g, b)
  r, g, b = r / 255, g / 255, b / 255

  local maxval = math.max(r, g, b)
  local minval = math.min(r, g, b)

  local h, s, l = 0, 0, (maxval + minval) / 2

  if maxval ~= minval then
    local d = maxval - minval
    s = l > 0.5 and d / (2 - maxval - minval) or d / (maxval + minval)

    if maxval == r then
      h = (g - b) / d + (g < b and 6 or 0)
    elseif maxval == g then
      h = (b - r) / d + 2
    else
      h = (r - g) / d + 4
    end

    h = h / 6
  end

  return h, s, l
end

function M.reduce_saturation(color, amount)
  -- remove "#" prefix if present
  color = color:gsub('^#', '')

  -- split the color into its red, green, and blue components
  local r = tonumber(color:sub(1, 2), 16)
  local g = tonumber(color:sub(3, 4), 16)
  local b = tonumber(color:sub(5, 6), 16)

  -- convert the RGB color to HSL
  local h, s, l = rgb_to_hsl(r, g, b)

  -- reduce the saturation by the specified amount
  s = s * (1 - amount / 100)

  -- convert the HSL color back to RGB
  r, g, b = hsl_to_rgb(h, s, l)

  -- convert the RGB color back to hexadecimal
  return string.format('#%02x%02x%02x', r, g, b)
end

return M
