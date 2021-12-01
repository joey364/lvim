-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarker"
lvim.transparent_window = true
vim.opt.relativenumber = true
-- require("lspconfig").graphql.setup({})

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = "maintained"

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings

require("lvim.lsp.manager").setup("graphql", {})

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ exe = "stylua" },
	{ exe = "rustfmt" },
})

-- -- set additional linters
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{
		exe = "shellcheck",
		args = { "--severity", "warning" },
	},
	{
		exe = "codespell",
		filetypes = { "javascript", "python" },
	},
	{
		exe = "eslint",
		filetypes = { "javascript", "javascriptreact" },
	},
})

-- Additional Plugins
-- lvim.plugins = {
--     {"folke/tokyonight.nvim"},
--     {
--       "folke/trouble.nvim",
--       cmd = "TroubleToggle",
--     },
-- }

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- require("user.autocommands").setup()
