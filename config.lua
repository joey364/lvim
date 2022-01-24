-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "tomorrow"
lvim.transparent_window = true

require("user.plugins")
require("user.settings")

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
	timeout = 5000,
	background_colour = "#000000",
}

lvim.builtin.treesitter.rainbow = {
	enable = true,
	colors = {
		"Gold",
		"Orchid",
		"LightSkyBlue",
	},
	disable = { "html" },
}

-- generic LSP settings
-- require("lvim.lsp.manager").setup("graphql", {})

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ exe = "stylua" },
	{ exe = "rustfmt" },
	{ exe = "shfmt" },
	{ exe = "prettier", filetypes = {
		"html",
		"css",
	} },
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
		filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
	},
})
