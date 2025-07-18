---@class plants.transparent
---@field normal? boolean
---@field normalfloat? boolean
---@field pmenu? boolean
---@field neotree? boolean
---@field nvimtree? boolean
---@field telescope? boolean
---@field whichkey? boolean
---@field lazy? boolean
---@field mason? boolean
---@field enabled? boolean

---@class plants.styles
---@field enabled? boolean
---@field types? vim.api.keyset.highlight
---@field functions? vim.api.keyset.highlight
---@field parameters? vim.api.keyset.highlight
---@field comments? vim.api.keyset.highlight
---@field strings? vim.api.keyset.highlight
---@field keywords? vim.api.keyset.highlight
---@field variables? vim.api.keyset.highlight
---@field constants? vim.api.keyset.highlight
---@field statements? vim.api.keyset.highlight

---@class plants.plugins
---@field treesitter? boolean
---@field lspconfig? boolean
---@field navic? boolean
---@field cmp? boolean
---@field indentblankline? boolean
---@field neotree? boolean
---@field nvimtree? boolean
---@field whichkey? boolean
---@field dashboard? boolean
---@field gitsigns? boolean
---@field telescope? boolean
---@field noice? boolean
---@field hop? boolean
---@field ministatusline? boolean
---@field minitabline? boolean
---@field ministarter? boolean
---@field minicursorword? boolean
---@field notify? boolean
---@field rainbowdelimiters? boolean
---@field bufferline? boolean
---@field lazy? boolean
---@field rendermarkdown? boolean
---@field neogit? boolean
---@field todocomments? boolean
---@field ale? boolean
---@field alpha? boolean
---@field yanky? boolean
---@field gitgutter? boolean
---@field coc? boolean
---@field leap? boolean
---@field mason? boolean
---@field flash? boolean

---@class plants.error_lens
---@field text? boolean
---@field symbol? boolean

---@class plants.config
---@field transparent? plants.transparent
---@field on_highlights? fun(colors: plants.palette, color: plants.color): plants.highlights
---@field on_colors? fun(colors: plants.palette, color: plants.color): plants.palette
---@field styles? plants.styles
---@field palette? "plants" | "selenized"
---@field plugins? plants.plugins
---@field error_lens? plants.error_lens
return {
  transparent = {
    enabled = false,
    pmenu = true,
    normal = true,
    normalfloat = true,
    neotree = true,
    nvimtree = true,
    whichkey = true,
    telescope = true,
    lazy = true,
    mason = true,
  },
  on_highlights = nil,
  on_colors = nil,
  palette = 'plants',
  error_lens = {
    text = false,
    symbol = false,
  },
  styles = {
    enabled = true,
    types = {},
    functions = {},
    parameters = {},
    comments = {},
    strings = {},
    keywords = {},
    variables = {},
    statements = {},
    constants = {},
  },
  plugins = {
    treesitter = true,
    lspconfig = true,
    navic = true,
    cmp = true,
    indentblankline = true,
    neotree = true,
    nvimtree = true,
    whichkey = true,
    dashboard = true,
    gitsigns = true,
    telescope = true,
    noice = true,
    hop = true,
    ministatusline = true,
    minitabline = true,
    ministarter = true,
    minicursorword = true,
    notify = true,
    rainbowdelimiters = true,
    bufferline = true,
    lazy = true,
    rendermarkdown = true,
    neogit = true,
    todocomments = true,
    ale = true,
    coc = true,
    leap = true,
    alpha = true,
    yanky = true,
    gitgutter = true,
    mason = true,
    flash = true,
  },
}
