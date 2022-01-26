local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    exe = "shfmt",
    filetypes = { "sh" },
  },
}

vim.cmd [[setlocal shiftwidth=4]]
vim.cmd [[setlocal tabstop=4]]

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    exe = "shellcheck",
    filetypes = { "sh" },
    args = { "--severity", "warning" },
  },
}
