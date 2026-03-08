
local utils = require("utils")

utils.bindn("<leader>s", function()
    vim.cmd("silent! wa")

    require('grug-far').open({
        -- Place window at this direction: -->
        windowCreationCommand = "botright vsplit",

        -- Use current file
        prefills = {
            paths = vim.fn.expand("%:p")
        }
    })
end, "GrugFar: Open search/replace on the right")

utils.listen("FileType", function()
    -- close with esc and go back to normal mode
    -- for some reason, it default back to insert
    -- weird...
    utils.bindn("<ESC>", "<cmd>bdelete!<CR><cmd>stopinsert<CR>", "GrugFar: Exit with Esc", { buffer = 0 })
    utils.bindn("<leader>w", "<cmd>GrugFar replace<CR>", "GrugFar: Exit with Esc", { buffer = 0 })
end, "Close GrugFar with ESC", { pattern = "grug-far" })

