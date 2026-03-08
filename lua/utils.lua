
local M = {}

function M.createSimpleCopy(t)
    local new = {}

    for k, v in pairs(t) do
        new[k] = v
    end

    return new
end

function M.mergeTable(source, onTop)
    local newTbl = M.createSimpleCopy(source)

    if onTop == nil then
        return newTbl
    end

    for k, v in pairs(onTop) do
        newTbl[k] = v
    end

    return newTbl
end

local defaultBindOpts = { noremap = true, silent = true }

function M.bindni(key, act, desc, opts)
    vim.keymap.set({"n", "i"}, key, act, M.mergeTable(M.mergeTable(defaultBindOpts, { desc = desc }), opts))
end

function M.bindall(key, act, desc, opts)
    vim.keymap.set({"n", "i", "v"}, key, act, M.mergeTable(M.mergeTable(defaultBindOpts, { desc = desc }), opts))
end

function M.bindn(key, act, desc, opts)
    vim.keymap.set({"n"}, key, act, M.mergeTable(M.mergeTable(defaultBindOpts, { desc = desc }), opts))
end

function M.bindi(key, act, desc, opts)
    vim.keymap.set({"i"}, key, act, M.mergeTable(M.mergeTable(defaultBindOpts, { desc = desc }), opts))
end

function M.bindnv(key, act, desc, opts)
    vim.keymap.set({"n", "v"}, key, act, M.mergeTable(M.mergeTable(defaultBindOpts, { desc = desc }), opts))
end

function M.bindterm(key, act, desc, opts)
    vim.keymap.set({"t"}, key, act, M.mergeTable(M.mergeTable(defaultBindOpts, { desc = desc }), opts))
end

function M.command(cmd, act, opt)
    vim.api.nvim_create_user_command(cmd, act, M.mergeTable({}, opt))
end

function M.listen(event, act, desc, opt)
    vim.api.nvim_create_autocmd(event, M.mergeTable({
        desc = desc,
        callback = act
    }, opt))
end

return M
