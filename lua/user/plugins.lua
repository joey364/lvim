-- plugins go here
lvim.plugins = {
  --themes
  -- { "folke/tokyonight.nvim" },
  -- { "glepnir/zephyr-nvim" },
  { "lunarvim/colorschemes" },
  {
    "projekt0n/github-nvim-theme",
    config = function()
      require "user.github_theme"
    end,
  },
  -- { "yamatsum/nvim-nonicons", requires = { "kyazdani42/nvim-web-devicons" } },

  --lsp enhancement
  --java
  { "mfussenegger/nvim-jdtls" },
  -- {
  --   "tzachar/cmp-tabnine",
  --   config = function()
  --     local tabnine = require "cmp_tabnine.config"
  --     tabnine:setup {
  --       max_lines = 1000,
  --       max_num_results = 20,
  --       sort = true,
  --     }
  --   end,
  --   run = "./install.sh",
  --   requires = "hrsh7th/nvim-cmp",
  -- },
  {
    "aca/emmet-ls",
    config = function()
      local lspconfig = require "lspconfig"
      local configs = require "lspconfig/configs"

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
      lspconfig.emmet_ls.setup { capabilities = capabilities }
    end,
  },
  {
    "hrsh7th/cmp-emoji",
    config = function()
      require("cmp").setup {
        sources = {
          { name = "emoji" },
        },
      }
    end,
  },
  { "github/copilot.vim" },

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

  -- git
  {
    "f-person/git-blame.nvim",
    config = function()
      require "user.gitblame"
    end,
  },

  -- debugging and testing
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
  -- {
  --   "iamcco/markdown-preview.nvim",
  --   run = "cd app && npm install",
  --   ft = "markdown",
  -- },

  -- {
  -- 	"Pocco81/AutoSave.nvim",
  -- 	config = function()
  -- 		require("autosave").setup()
  -- 	end,
  -- },
  {
    "folke/todo-comments.nvim",
    config = function()
      require("user.todo_comments").config()
    end,
  },
  {
    "CRAG666/code_runner.nvim",
    config = function()
      require("code_runner").setup {
        -- put here the commands by filetype
        filetype = {
          c = "gcc $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
          cpp = "g++ $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
          java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
          python = "python3 -u",
          go = "go run .",
          javascript = "bun $fileName",
          typescript = "deno run",
          rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
        },
      }
    end,
    requires = "nvim-lua/plenary.nvim",
  },
  -- { "nvim-telescope/telescope-media-files.nvim" },
  {
    "rcarriga/nvim-notify",
    config = function()
      require "user.notify"
    end,
  },
}
