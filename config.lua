-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "github_dark_default"
lvim.transparent_window = true

require "user.plugins"
require "user.settings"
require "user.copilot"
-- require "user.github_theme"
require "user.keymaps"

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
-- lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.nvimtree.setup.git.ignore = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = "all"

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

lvim.builtin.illuminate.active = false

--notify plugin
-- lvim.builtin.notify = {
--   active = true,
--   opts = {
--     timeout = 700,
--     background_colour = "#1E222A",
--   },
-- }

lvim.builtin.treesitter.rainbow = {
  enable = true,
  colors = {
    "Gold",
    "Orchid",
    "LightSkyBlue",
    "LightSalmon",
  },
  disable = { "html", "javascript", "javascriptreact", "typescript", "typescriptreact", "php" },
}

-- generic LSP settings
-- require("lvim.lsp.manager").setup("graphql", {})
