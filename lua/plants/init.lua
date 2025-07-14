---@class plants
---@field config? plants.config
---@field setup? fun(config: plants.config)
---@field load? fun()

---@type plants
local M = {}

M.config = require 'plants.config'

M.setup = function(config)
  M.config = vim.tbl_deep_extend('force', M.config, config or {})

  if M.config.styles.enabled == false then
    M.config.styles = {
      types = { italic = false, bold = false },
      functions = { italic = false, bold = false },
      parameters = { italic = false, bold = false },
      comments = { italic = false, bold = false },
      strings = { italic = false, bold = false },
      keywords = { italic = false, bold = false },
      variables = { italic = false, bold = false },
      constants = { italic = false, bold = false },
    }
  end
end

M.load = function()
  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end

  if vim.fn.exists 'syntax_on' then
    vim.cmd 'syntax reset'
  end

  vim.g.colors_name = 'plants'
  local highlights = {}
  local colors = {}
  if vim.o.background == 'dark' then
    highlights = require 'plants.highlights'
    local palette = require 'plants.palette'
    colors = palette[M.config.palette]
  else
    highlights = require 'plants.highlights.plants-light'
    local palette = require 'plants.palette.plants-light'
    colors = palette[M.config.palette]
  end

  highlights.set_highlight(colors, M.config)
end

return M
