---@class solarized.palette
---@field base0? string
---@field base00? string
---@field base01? string
---@field base02? string
---@field base03? string
---@field base04? string
---@field base1? string
---@field base2? string
---@field base3? string
---@field base4? string
---@field blue? string
---@field cyan? string
---@field diag_error? string
---@field diag_hint? string
---@field diag_info? string
---@field diag_ok? string
---@field diag_warning? string
---@field git_add? string
---@field git_delete? string
---@field git_modify? string
---@field green? string
---@field magenta? string
---@field mix_blue? string
---@field mix_cyan? string
---@field mix_green? string
---@field mix_magenta? string
---@field mix_orange? string
---@field mix_red? string
---@field mix_violet? string
---@field mix_yellow? string
---@field mix_base1? string
---@field mix_base01? string
---@field orange? string
---@field red? string
---@field violet? string
---@field yellow? string

local M = {}

---@type solarized.palette
M.solarized = {
  base04        = '#252a22',
  base03        = '#2b3227',
  base02        = '#323a2e',
  base01        = '#404b3b',
  base00        = '#495444',
  base0         = '#c6ecab',
  base1         = '#cff2b6',
  base2         = '#d5f7bd',
  base3         = '#ddfac9',
  base4         = '#e3ffcf',
  red           = '#f76866',
  green         = '#94f763',
  yellow        = '#ead97f',
  blue          = '#539ddb',
  magenta       = '#ea7fcc',
  cyan          = '#54f4f2',
  orange        = '#f7c566',
  violet        = '#967cdb',
  diag_error    = '#DC322F',
  diag_hint     = '#5b97cb',
  diag_info     = '#5b97cb',
  diag_ok       = '#6cffaf',
  diag_warning  = '#dbce5e',
  git_add       = '#6cffaf',
  git_delete    = '#DC322F',
  git_modify    = '#dbce5e',
  mix_blue      = '#20567c',
  mix_cyan      = '#1e6569',
  mix_green     = '#2e6143',
  mix_magenta   = '#534d6b',
  mix_orange    = '#525248',
  mix_base1     = '#486B74',
  mix_base01    = '#CACBBC',
  mix_red       = '#56444a',
  mix_violet    = '#3f5278',
  mix_yellow    = '#4c5f3f',
}

return M
