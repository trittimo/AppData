local tabman = require("vim_config.tabman")
local telescope = require("telescope.builtin")
local actions = require("telescope.actions")

vim.g.mapleader = " "

-- Telescope bindings
require("telescope").setup({
    defaults = {
        mappings = {
            i = {
                -- Exit insert mode and return to normal mode
                ["kj"] = false
            }
        }
    }
})

vim.keymap.set("n", "<leader>ff", telescope.find_files, {})
vim.keymap.set("n", "<leader>fg", telescope.live_grep, {})

-- Comment toggler
require("Comment").setup({
    toggler = { line = "<C-/>" },
    mappings = { extra = false }
})
-- vim.keymap.set({"n", "i"}, "<C-/>", function()
--     return vim.api.nvim_get_vvar('count') == 0 and
--         '<Plug>(comment_toggle_linewise_current)' or
--         '<Plug>(comment_toggle_linewise_count)'
--     end)

-- Would be useful if we didn't have telescope.find_files
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- Move lines around naturally
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<S-k>", "<cmd>:m-2<CR>gv=gv")
vim.keymap.set("n", "<S-j>", "<cmd>:m+1<CR>gv=gv")

-- "Scroll" up/down and center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Format the current buffer using the available LSP
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Find/Replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Escape keybinds
vim.keymap.set("i", "kj", "<esc>")
vim.keymap.set("v", "kj", "<esc>")
vim.keymap.set("t", "kj", "<C-\\><C-n>")
vim.keymap.set("t", "<esc>", "<C-\\><C-n>")

-- Window related keybinds
-- Create new windows
vim.keymap.set("n", "<C-Right>", "<cmd>:vsplit<CR><cmd>:wincmd l<CR>")
vim.keymap.set("n", "<C-Left>", "<cmd>:vsplit<CR><cmd>:wincmd h<CR>")
vim.keymap.set("n", "<C-Down>", "<cmd>:split<CR><cmd>:wincmd j<CR>")
vim.keymap.set("n", "<C-Up>", "<cmd>:vsplit<CR><cmd>:wincmd k<CR>")

-- Navigate to a specific window quickly
vim.keymap.set("n", "<C-1>", "<C-w>1<C-w>")
vim.keymap.set("n", "<C-2>", "<C-w>2<C-w>")
vim.keymap.set("n", "<C-3>", "<C-w>3<C-w>")
vim.keymap.set("n", "<C-4>", "<C-w>4<C-w>")
vim.keymap.set("n", "<C-5>", "<C-w>5<C-w>")
vim.keymap.set("n", "<C-6>", "<C-w>6<C-w>")
vim.keymap.set("n", "<C-7>", "<C-w>7<C-w>")
vim.keymap.set("n", "<C-8>", "<C-w>8<C-w>")
vim.keymap.set("n", "<C-9>", "<C-w>9<C-w>")
vim.keymap.set({"v", "i"}, "<C-1>", "<esc><C-w>1<C-w>")
vim.keymap.set({"v", "i"}, "<C-2>", "<esc><C-w>2<C-w>")
vim.keymap.set({"v", "i"}, "<C-3>", "<esc><C-w>3<C-w>")
vim.keymap.set({"v", "i"}, "<C-4>", "<esc><C-w>4<C-w>")
vim.keymap.set({"v", "i"}, "<C-5>", "<esc><C-w>5<C-w>")
vim.keymap.set({"v", "i"}, "<C-6>", "<esc><C-w>6<C-w>")
vim.keymap.set({"v", "i"}, "<C-7>", "<esc><C-w>7<C-w>")
vim.keymap.set({"v", "i"}, "<C-8>", "<esc><C-w>8<C-w>")
vim.keymap.set({"v", "i"}, "<C-9>", "<esc><C-w>9<C-w>")

-- Navigate around windows naturally
vim.keymap.set("n", "<C-k>", "<cmd>:wincmd k<CR>")
vim.keymap.set("n", "<C-j>", "<cmd>:wincmd j<CR>")
vim.keymap.set("n", "<C-h>", "<cmd>:wincmd h<CR>")
vim.keymap.set("n", "<C-l>", "<cmd>:wincmd l<CR>")

-- Move windows around naturally
vim.keymap.set("n", "<C-S-k>", "<C-w><S-k>")
vim.keymap.set("n", "<C-S-j>", "<C-w><S-j>")
vim.keymap.set("n", "<C-S-h>", "<C-w><S-h>")
vim.keymap.set("n", "<C-S-l>", "<C-w><S-l>")

-- Resize windows
vim.keymap.set("n", "<C-]>", "<cmd>:vert resize +5<CR>")
vim.keymap.set("n", "<C-[>", "<cmd>:vert resize -5<CR>")
vim.keymap.set("n", "<C-S-[>", "<cmd>:resize -5<CR>")
vim.keymap.set("n", "<C-S-]>", "<cmd>:resize +5<CR>")
vim.keymap.set({"n","i","v"}, "<C-w>--", "<cmd>:set ead=ver ea noea<CR>")
vim.keymap.set({"n","i","v"}, "<C-w>==", "<cmd>:set ead=hor ea noea<CR>")

-- When in the terminal, go quickly to command mode
-- vim.keymap.set("t", ":", "<C-\\><C-n>:")
-- vim.keymap.set("t", "::", ":")

-- Shift quickly between tabs
vim.keymap.set({"n","v","t","i"}, "<C-tab>", "<cmd>:tabn<CR>")
vim.keymap.set({"n","v","t","i"}, "<C-S-tab>", "<cmd>:tabp<CR>")

-- Create new tabs
vim.keymap.set({"n","v","t","i"}, "<C-t>", "<cmd>:tabnew<CR>")
-- vim.keymap.set({"n","v","t","i"}, "<C-w>", tabman.closetab, { nowait = true })

-- Movement in insert mode
vim.keymap.set("i", "<C-l>", "<Right>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-h>", "<Left>")

-- Close current window
vim.keymap.set("n", "<C-q>", "<cmd>:close<CR>")
