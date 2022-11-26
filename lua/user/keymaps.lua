-- remaps
lvim.keys.insert_mode["jk"] = "<esc>"
-- lvim.keys
lvim.keys.normal_mode["<S-h>"] = ":bprev<CR>"
lvim.keys.normal_mode["<S-l>"] = ":bnext<CR>"

--toggleterm
lvim.builtin.terminal.open_mapping = "<C-t>"

-- which key
lvim.builtin.which_key.mappings["r"] = {
  name = "+Run Code",
  c = { "<cmd>RunClose<cr>", "Close run window" },
  r = { "<cmd>RunCode<cr>", "Run code" },
  p = {
    name = "+Run project",
    t = { "<cmd>RunProject toggleterm<cr>", "Run file with toggleterm" },
    T = { "<cmd>RunProject tab<cr>", "Run file in tab window" },
    f = { "<cmd>RunProject float<cr>", "Run file in floating window" },
  },
  f = {
    name = "Run file",
    t = { "<cmd>RunFile toggleterm<cr>", "Run file with toggleterm" },
    T = { "<cmd>RunFile tab<cr>", "Run file in tab window" },
    f = { "<cmd>RunFile float<cr>", "Run file in floating window" },
  },
}
