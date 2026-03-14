
local utils = require("utils")

utils.listen("VimEnter", function()
    vim.cmd("Neotree")
    vim.cmd("wincmd p") -- Move to primary win
end)
