vim.g.mapleader = " " -- Tecla líder

local keymap = vim.keymap

-- Alteração, Conjunto novo, Função antiga
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
