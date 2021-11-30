local M = {}

M.config = function()
	-- plugins go here
	lvim.plugins = {
		--themes
		-- { "folke/tokyonight.nvim" },
		{ "glepnir/zephyr-nvim" },
		{ "lunarvim/colorschemes" },

		--lsp enhancement
		{
			"tzachar/compe-tabnine",
			run = "./install.sh",
			requires = "hrsh7th/nvim-compe",
			event = "InsertEnter",
		},
		{
			"aca/emmet-ls",
			config = function()
				local lspconfig = require("lspconfig")
				local configs = require("lspconfig/configs")

				local capabilities = vim.lsp.protocol.make_client_capabilities()
				capabilities.textDocument.completion.completionItem.snippetSupport = true
				capabilities.textDocument.completion.completionItem.resolveSupport = {
					properties = {
						"documentation",
						"detail",
						"additionalTextEdits",
					},
				}

				if not lspconfig.emmet_ls then
					configs.emmet_ls = {
						default_config = {
							cmd = { "emmet-ls", "--stdio" },
							filetypes = {
								"html",
								"css",
								"javascript",
								"typescript",
								"typescriptreact",
								"javascriptreact",
							},
							root_dir = function(fname)
								return vim.loop.cwd()
							end,
							settings = {},
						},
					}
				end
				lspconfig.emmet_ls.setup({ capabilities = capabilities })
			end,
		},

		--treesitter
		{
			"windwp/nvim-ts-autotag",
			event = "InsertEnter",
			config = function()
				require("nvim-ts-autotag").setup()
			end,
		},
		{
			"p00f/nvim-ts-rainbow",
		},

		-- general
		{
			"ray-x/lsp_signature.nvim",
			event = "BufRead",
			config = function()
				require("lsp_signature").setup()
			end,
		},
		{
			"metakirby5/codi.vim",
			cmd = "Codi",
		},
		{
			"norcalli/nvim-colorizer.lua",
			config = function()
				require("colorizer").setup({ "*" }, {
					RGB = true, -- #RGB hex codes
					RRGGBB = true, -- #RRGGBB hex codes
					RRGGBBAA = true, -- #RRGGBBAA hex codes
					rgb_fn = true, -- CSS rgb() and rgba() functions
					hsl_fn = true, -- CSS hsl() and hsla() functions
					css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
					css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
				})
			end,
		},
	}
end

return M
