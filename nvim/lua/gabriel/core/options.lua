local opt = vim.opt -- Declaração de uma variável local, para não causar conflitos nos outros arquivos

-- Numeração

opt.number = true

-- Indentação, espaço e tab

opt.tabstop = 2 
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Pesquisa

opt.ignorecase = true
opt.smartcase = true

-- Linha

opt.cursorline = true

-- Aparência

opt.termguicolors = true
opt.background = "dark"

-- Backspace

opt.backspace = "indent,eol,start"

-- Copia e cola

opt.clipboard:append("unnamedplus")

-- Divisão de tela

opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
