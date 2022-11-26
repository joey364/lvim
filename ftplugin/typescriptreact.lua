local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    exe = "prettier",
    filetypes = { "typescriptreact" },
    args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--quote-props=consistent" },
  },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    exe = "eslint",
    filetypes = { "typescriptreact" },
  },
  {
    exe = "codespell",
    filetypes = { "typescriptreact" },
  },
}

-- {
--   "semi": true,
--   "tabWidth": 2,
--   "printWidth": 100,
--   "singleQuote": true,
--   "trailingComma": "none",
--   "jsxBracketSameLine": true
-- }
