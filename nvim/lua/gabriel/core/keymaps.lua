vim.g.mapleader = " " -- Tecla líder

local keymap = vim.keymap

-- Modo, Conjunto novo, Função antiga
keymap.set("i", "jk", "<ESC>") -- O conjunto jk tem a mesma função da tecla escape

keymap.set("n", "<leader>nh", ":nohl<CR>") -- Elimina a pesquisa rápida

-- Divisão de telas

keymap.set("n", "<leader>sv", "<C-w>v") -- Divide verticalmente (Ctrl+w)
keymap.set("n", "<leader>sh", "<C-w>s") -- Divide horizontalmente
keymap.set("n", "<leader>se", "<C-w>e") -- Divide igualmente
keymap.set("n", "<leader>sx", ":close<CR>") -- Fecha a janela

-- Divisão de guias

keymap.set("n", "<leader>to", ":tabnew<CR>") -- Abertura de uma nova guia
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- Fechamento de uma guia
keymap.set("n", "<leader>tp", ":tabp<CR>") -- Mudar para aba anterior
keymap.set("n", "<leader>tn", ":tabn<CR>") -- Mudar para aba posterior

-- Ajustes de teclas para os plugins

-- vim-maximizer

keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope

keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
