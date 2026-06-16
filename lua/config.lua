
-- Enable line number
vim.opt.number = true

-- Set tab --AUTO-> 4 spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2 
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.mouse = ""

-- Set leader
vim.g.leader = " "

require("plugins") -- Load all plugins

-- Load all config
require("config.keybinds")
require("config.plugins")
require("config.coc")
require("config.commands")
require("config.events")
require("config.grugfar")
