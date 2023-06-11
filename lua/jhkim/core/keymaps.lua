-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- window management
keymap.set("n", "\\", "<C-w>v") -- split window vertically
keymap.set("n", "-", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>te", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- Better window navigation
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")
--
-- Better window navigation with Tmux
-- keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
-- keymap.set("n", "<C-j>", "<cmd>TmuxNavigateRight<cr>")
-- keymap.set("n", "<C-k>", "<cmd>TmuxNavigateDown<cr>")
-- keymap.set("n", "<C-l>", "<cmd>TmuxNavigateUp<cr>")

-- Resize with arrows
keymap.set("n", "<C-Up>", ":resize -2<CR>")
keymap.set("n", "<C-Down>", ":resize +2<CR>")
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- Navigate buffers
keymap.set("n", "<S-l>", ":bnext<CR>")
keymap.set("n", "<S-h>", ":bprevious<CR>")
keymap.set("n", "<tab>", ":bnext<cr>") -- Next Tab
keymap.set("n", "<s-tab>", ":bprevious<cr>") -- Previous tab

-- Move Block
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Stay in indent mode
keymap.set("v", "<", "<gv") -- Right Indentation
keymap.set("v", ">", ">gv") -- Left Indentation

-- Experimental
keymap.set("", "<esc>", ":nohlsearch<cr>") -- esc to nohlsearch

keymap.set("n", "<space>s", ":w<CR>") -- Save
keymap.set("n", "<space>d", ":bd<CR>") -- Buffer clos
keymap.set("n", "<space>q", ":q<CR>") -- exit
keymap.set("n", "<space>Q", ":q!<CR>") -- force exit

keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set("x", "<leader>p", [["_dP]])
-- keymap.set({ "n", "v" }, "<leader>d", [["_d]])

keymap.set("n", "Q", "<nop>")

keymap.set({ "n", "i" }, "<C-c>", "<Esc>")

keymap.set({ "n", "v" }, "<leader>vs", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap.set({ "n", "v" }, "<leader>vv", [[:%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>]])

keymap.set("n", "<leader>vo", "<cmd>e ~/.config/nvim/lua/jhkim/core/options.lua<CR>")
keymap.set("n", "<leader>vk", "<cmd>e ~/.config/nvim/lua/jhkim/core/keymaps.lua<CR>")

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- undotree
keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "UndoTree" })

-- Markdown Preview
keymap.set("n", "<leader>vm", "<Plug>MarkdownPreviewToggle")

-- cmdline
-- vim.api.nvim_set_keymap("n", ":", "<cmd>FineCmdline<CR>", { noremap = true })
