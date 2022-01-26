local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    exe = "prettier",
    filetypes = { "javascriptreact" },
    args = { "--no-semi", "--single-quote", "--jsx-bracket-same-line", "--jsx-single-quote" },
  },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    exe = "eslint",
    filetypes = { "javascript" },
  },
  {
    exe = "codespell",
    filetypes = { "javascript" },
  },
}
