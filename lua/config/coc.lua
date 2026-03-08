
vim.opt.updatetime = 300

local utils = require('utils')

-- From coc official example config
-- Helper function
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- Go next
utils.bindi("<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', "Coc: Next or Tab", { expr = true, replace_keycodes = false })

-- Accept current
utils.bindi("<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], "Coc: Confirm completion", { expr = true, replace_keycodes = false })

-- Cancel completion on ESC
utils.bindi("<ESC>", [[coc#pum#visible() ? coc#pum#cancel() : "\<ESC>"]], "Coc: Cancel completion (aka close completion ui)", { expr = true })

-- Refresh
utils.bindi("<c-space>", "coc#refresh()", "Coc: Refresh completion", { expr = true })

-- Show Diag
utils.bindn("<C-S-Space>", "<Plug>(coc-diagnostic-prev)", "Coc: Previous diagnostic", { remap = true, noremap = false })
utils.bindn("<C-Space>", "<Plug>(coc-diagnostic-next)", "Coc: Next diagnostic", { remap = true, noremap = false })

-- Show relevent info
utils.bindn("<leader>d", "<Plug>(coc-definition)", "Coc: Go to definition", { remap = true, noremap = false })
utils.bindn("<leader>i", "<Plug>(coc-implementation)", "Coc: Go to implementation", { remap = true, noremap = false })

-- Show docs
function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end

utils.bindn("<leader><leader>", '<CMD>lua _G.show_docs()<CR>', "Coc: Open docs inline")

-- Refactor sym
utils.bindn("<leader>R", "<Plug>(coc-rename)", "Coc: Refactor sym")

