local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    exe = "prettier",
    filetypes = { "typescript" },
    args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--quote-props=consistent" },
  },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    exe = "eslint",
    filetypes = { "typescript" },
  },
  {
    exe = "codespell",
    filetypes = { "typescript" },
  },
}
