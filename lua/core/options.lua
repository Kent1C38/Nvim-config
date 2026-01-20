local opt = vim.opt

-- numeros de ligne
opt.number = true

--indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.autoindent = true

-- recherche
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

-- curseur

--couleurs
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- retour
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard = "unnamedplus"

-- split des fenetres
opt.splitright = true
opt.splitbelow = true

-- misc
opt.swapfile = false
opt.undofile = true
opt.iskeyword:append("-")

-- charactères spéciaux
opt.list = true
opt.listchars:append({ nbsp = "␣", trail = "•", precedes = "«", extends = "»", tab = "> " })
