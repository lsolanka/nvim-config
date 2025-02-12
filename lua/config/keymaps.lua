-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")
wk.add({
  { "<leader>t", group = "In New Tab" },
  { "<leader>tg", group = "GoTo" },
  {
    "<leader>tgd",
    "<cmd>tab split | lua vim.lsp.buf.definition()<CR>",
    desc = "GoTo Definition in new tab",
    mode = "n",
  },
  {
    "<leader>ts",
    "<cmd>tab split<CR>",
    desc = "Split current into new tab",
    mode = "n",
  },
})
