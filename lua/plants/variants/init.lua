local M = {}

---@class plants.opts
---@field colors plants.palette
---@field color plants.color
---@field config plants.config
---@field nvim_set_hl fun(group_name: string, group_val: vim.api.keyset.highlight, config?: plants.nvim_set_hl.config)

---@param opts plants_variants.opts
M.set_variant = function(opts)
  local colors, _, config, nvim_set_hl = opts.colors, opts.color, opts.config, opts.nvim_set_hl

  nvim_set_hl(
    'WinSeparator',
    { fg = colors.base0, bg = colors.base04 },
    { transparent = config.transparent.enabled }
  )
  nvim_set_hl('FloatBorder', { fg = colors.base0, bg = colors.base04 }, {
    transparent = config.transparent.enabled,
  })
  nvim_set_hl('FloatTitle', { fg = colors.base04, bg = colors.base4 })
  nvim_set_hl(
    'SignColumn',
    { fg = colors.base1, bg = colors.base02 },
    { transparent = config.transparent.enabled }
  )
  nvim_set_hl(
    'LineNr',
    { fg = colors.base1, bg = colors.base02 },
    { transparent = config.transparent.enabled }
  )
  nvim_set_hl(
    'CursorLineNr',
    { fg = colors.green, bg = colors.mix_green, bold = true },
    { transparent = config.transparent.enabled }
  )

  -- SYNTAX :h group-name
  -- Property, Parameter, TagAttribute, TagDelimiter <-- custom
  nvim_set_hl('Comment', { fg = colors.base00 }, { styles = config.styles.comments })
  nvim_set_hl('Constant', { fg = colors.violet }, { styles = config.styles.constants })
  nvim_set_hl('String', { fg = colors.green }, { styles = config.styles.strings })
  nvim_set_hl('Character', { link = 'String' })
  nvim_set_hl('Number', { link = 'Constant' })
  nvim_set_hl('Boolean', { link = 'Constant' })
  nvim_set_hl('Float', { link = 'Constant' })
  nvim_set_hl('Identifier', { fg = colors.base0 }, { styles = config.styles.variables })
  nvim_set_hl('Property', { fg = colors.blue }, { styles = config.styles.variables })
  nvim_set_hl(
    'Parameter',
    { fg = colors.blue, italic = true },
    { styles = config.styles.variables }
  )
  nvim_set_hl('Function', { fg = colors.grellow }, { styles = config.styles.functions })
  nvim_set_hl('Statement', { fg = colors.green }, { styles = config.styles.statements })
  nvim_set_hl('Conditional', { link = 'Statement' })
  nvim_set_hl('Repeat', { link = 'Statement' })
  nvim_set_hl('Label', { link = 'Statement' })
  nvim_set_hl('Operator', { link = 'Statement' })
  nvim_set_hl('Keyword', { fg = colors.base1, bold = true }, { styles = config.styles.keywords })
  nvim_set_hl('Exception', { link = 'Statement' })
  nvim_set_hl('Include', { link = 'Keyword' })
  nvim_set_hl('Define', { link = 'Include' })
  nvim_set_hl('Macro', { link = 'Include' })
  nvim_set_hl('PreProc', { link = 'Include' })
  nvim_set_hl('PreCondit', { link = 'Statement' })
  nvim_set_hl('Type', { fg = colors.orange }, { styles = config.styles.types })
  nvim_set_hl('StorageClass', { link = 'Statement' })
  nvim_set_hl('Structure', { link = 'Type' })
  nvim_set_hl('Typedef', { link = 'Statement' })
  nvim_set_hl('Special', { fg = colors.violet })
  nvim_set_hl('SpecialChar', { fg = colors.violet })
  nvim_set_hl('Tag', { fg = colors.blue })
  nvim_set_hl('TagAttribute', { fg = colors.base1 })
  nvim_set_hl('TagDelimiter', { fg = colors.base01 })
  nvim_set_hl('Delimiter', { fg = colors.base0 })
  nvim_set_hl('SpecialComment', { link = 'Statement' })
  nvim_set_hl('Debug', { fg = colors.magenta })
  nvim_set_hl('Underlined', { fg = colors.magenta, underline = true })
  nvim_set_hl('Ignore', {})
  nvim_set_hl('Error', { fg = colors.diag_error, bold = true })
  nvim_set_hl('Todo', { fg = colors.blue })
  nvim_set_hl('Added', { fg = colors.git_add })
  nvim_set_hl('Changed', { fg = colors.git_modify })
  nvim_set_hl('Removed', { fg = colors.git_delete })
end

return M
