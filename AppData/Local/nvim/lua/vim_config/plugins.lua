-- Initialize

local plug = vim.fn["plug#"]
vim.call("plug#begin")

plug("nvim-lua/plenary.nvim")
plug("nvim-telescope/telescope.nvim", { tag = "0.1.8" })
plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate" })
plug("numToStr/Comment.nvim")

vim.call("plug#end")

-- treesitter
require("nvim-treesitter.install").compilers = { "clang" }
