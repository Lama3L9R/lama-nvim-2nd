
local utils = require("utils")

utils.listen("VimEnter", function()
    vim.cmd("Neotree")
end)
