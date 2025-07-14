local palette = require 'plants.palette'
local c = palette.plants
return {
  normal = {
    a = { fg = c.base03, bg = c.base0, gui = 'bold' },
    b = { fg = c.base02, bg = c.base1 },
    c = { fg = c.base02, bg = c.base1 },
    z = { fg = c.base03, bg = c.base0 },
  },
  insert = {
    a = { fg = c.base03, bg = c.green },
  },
  visual = {
    a = { fg = c.base03, bg = c.magenta },
  },
  replace = {
    a = { fg = c.base03, bg = c.red },
  },
  command = {
    a = { fg = c.base03, bg = c.grellow },
  },
}

