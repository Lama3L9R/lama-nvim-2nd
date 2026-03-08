
local utils = require("utils")

local function smart_resize(amount)
    if vim.fn.winwidth(0) < vim.o.columns then
        vim.cmd("vertical resize " .. (amount > 0 and "+" or "-") .. math.abs(amount))
    else
        vim.cmd("resize " .. (amount > 0 and "+" or "-") .. math.abs(amount))
    end
end

-- General bindings
utils.bindall("<C-s>", "<ESC>:w<CR>", "Save")

utils.bindni("<C-q>", "<C-w>h", "Move to left window")
utils.bindni("<C-e>", "<C-w>l", "Move to right window")
utils.bindni("<C-n>", ":Neotree toggle<CR>", "Open Neotree")

utils.bindn("U", "<C-r>", "Redo")

utils.bindnv("J", "10j", "Fast Move Down (10 lines)")
utils.bindnv("K", "10k", "Fast Move Up (10 lines)")
utils.bindnv("H", "10h", "Fast Move Left (10 chars)")
utils.bindnv("L", "10l", "Fast Move Right (10 chars)")

utils.bindn("<leader>k", function() smart_resize(3) end, "Window: Smart Enlarge")
utils.bindn("<leader>K", function() smart_resize(10) end, "Window: Smart Enlarge")
utils.bindn("<leader>j", function() smart_resize(-3) end, "Window: Smart Shrink")
utils.bindn("<leader>J", function() smart_resize(-10) end, "Window: Smart Shrink")


utils.bindnv("<C-S-h>", "^", "Jump to first non-blank character of line")
utils.bindnv("<C-S-l>", "$", "Jump to end of line")
utils.bindnv("<C-S-k>", "ggzz", "Jump to top of file")
utils.bindnv("<C-S-j>", "Gzz", "Jump to bottom of file")

utils.bindnv("<leader>b", "zz", "Center Current line")

-- Terminal bindings 
utils.bindn("<leader>t", function()
    vim.cmd("botright 10split term://zsh")
    vim.cmd("startinsert")
end, "Terminal: Open at bottom")

utils.listen("TermOpen", function()
    utils.bindterm("<Esc>", "<C-\\><C-n>", "Terminal: Quit terminal to normal")
    utils.bindn("<ESC>", "<cmd>bdelete!<CR>", "Terminal: Close Terminal from Normal", { buffer = 0 })

    vim.opt_local.number = false
    vim.opt_local.signcolumn = "no"
end, "Terminal: Double-ESC logic to exit and close")

