
-- Enable line number
vim.opt.number = true

-- Set tab --AUTO-> 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

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
