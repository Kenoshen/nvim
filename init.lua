-- enable 24-bit colors
vim.g.termguicolors=true
-- enable relative line numbers
vim.cmd("set relativenumber")
vim.cmd("set number")

require("config.mappings")
require("config.lazy")
