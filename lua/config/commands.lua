
local utils = require("utils")

utils.command("SysClip", "set clipboard=unnamedplus")
utils.command("FkSysClip", "set clipboard=")

utils.command("Indent", function(opts)
    local indents = tonumber(opts.fargs[1])

    print("Set indents to " .. indents)

    vim.opt.tabstop = indents
    vim.opt.shiftwidth = indents
    vim.opt.softtabstop = indents
end)

utils.command("W", "write")
utils.command("Wq", "wq")
utils.command("Q", "q")
