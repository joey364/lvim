-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "system76"
lvim.transparent_window = true

require "user.plugins"
require "user.settings"

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.nvimtree.setup.git.ignore = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = "maintained"

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- notify plugin
lvim.builtin.notify.active = true
lvim.builtin.notify.opts = {
  timeout = 500,
  background_colour = "#000000",
}

lvim.builtin.treesitter.rainbow = {
  enable = true,
  colors = {
    "Gold",
    "Orchid",
    "LightSkyBlue",
  },
  disable = { "html", "javascriptreact", "typescriptreact" },
}

-- generic LSP settings
-- require("lvim.lsp.manager").setup("graphql", {})
