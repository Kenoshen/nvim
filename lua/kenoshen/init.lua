-- enable 24-bit colors
vim.g.termguicolors=true
-- enable relative line numbers
vim.cmd("set relativenumber")
vim.cmd("set number")

require("kenoshen.mappings")
require("kenoshen.lazy")

