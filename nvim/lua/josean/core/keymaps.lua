-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- helper
-- ! при нажатие техже комнд он отключает что рание было включенно

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- numbers
keymap.set("n", "<leader>nq", ":set relativenumber!<CR>") -- number

keymap.set("n", "<C-s>", ":w<CR>") -- сохранения файлa
-- background opacity
keymap.set("n", "<leader>nu", ":highlight LineNr guifg=#948E90 || hi Normal guibg=NONE ctermbg=NONE<CR>")

keymap.set("n", "<leader>dl", ":g/^\\s*$/d") -- удалить все пустые строки в коде
-- wrap or nowrap
keymap.set("n", "<leader>nm", ":set wrap!<CR>")

-- photo preview feh
keymap.set("n", "<leader>nv", ":!feh %<CR>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

keymap.set("n", "<leader>S", '<cmd>lua require("spectre").toggle()<CR>', {
	desc = "Toggle Spectre",
})
keymap.set("n", "<leader>sw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
	desc = "Search current word",
})
keymap.set("v", "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', {
	desc = "Search current word",
})
keymap.set("n", "<leader>sp", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
	desc = "Search on current file",
})

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- работает в alacritty -- горизонтальный скролл мышкой
keymap.set("n", "<C-ScrollWheelUp>", "z3l")
keymap.set("n", "<C-ScrollWheelDown>", "z3h")

-- для cpm переход по $1 итд cнипетты
keymap.set("i", "<C-t>", "<cmd>lua require('luasnip').jump(1)<Cr>")
keymap.set("i", "<C-r>", "<cmd>lua require('luasnip').jump(-1)<Cr>")

-- Сопостовления клавишам передвижения
keymap.set("i", "<C-j>", "<Left>")
keymap.set("i", "<C-k>", "<Right>")
keymap.set("i", "<C-l>", "<DELETE>") -- удалять по символу взади клавиша delete
-- Ctrl + h -- по умолчанию уже работает и удаляет как клавиша backspace

keymap.set("n", "<leader>y", ":%y+<Cr>")

-- formatter
-- priettier
keymap.set("n", "<leader>np", ":!prettier % --write<CR>")
