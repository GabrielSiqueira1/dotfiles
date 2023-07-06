vim.g.mapleader = " " -- Tecla líder

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>") -- O conjunto jk tem a mesma função da tecla escape

keymap.set("n", "<leader>nh", ":nohl<CR>") -- Elimina a pesquisa rápida
