vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99   -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.o.fillchars = [[eob: ,fold: ,foldopen:-,foldsep:│,foldclose:+]]

local handler = function(virtText, lnum, endLnum, width, truncate)
    local newVirtText = {}
    local suffix = (' ...󰁂 %d LINE FOLDED '):format(endLnum - lnum)
    local sufWidth = vim.fn.strdisplaywidth(suffix)
    local targetWidth = width - sufWidth
    local curWidth = 0
    for _, chunk in ipairs(virtText) do
        local chunkText = chunk[1]
        local chunkWidth = vim.fn.strdisplaywidth(chunkText)
        if targetWidth > curWidth + chunkWidth then
            table.insert(newVirtText, chunk)
        else
            chunkText = truncate(chunkText, targetWidth - curWidth)
            local hlGroup = chunk[2]
            table.insert(newVirtText, { chunkText, hlGroup })
            chunkWidth = vim.fn.strdisplaywidth(chunkText)
            -- str width returned from truncate() may less than 2nd argument, need padding
            if curWidth + chunkWidth < targetWidth then
                suffix = suffix .. (' '):rep(targetWidth - curWidth - chunkWidth)
            end
            break
        end
        curWidth = curWidth + chunkWidth
    end
    table.insert(newVirtText, { suffix, 'MoreMsg' })
    return newVirtText
end

require('ufo').setup({
    open_fold_hl_timeout = 200,
    fold_virt_text_handler = handler,
    close_fold_kinds_for_ft = { 'imports', 'comment' },
    preview = {
        win_config = {
            winblend = 0,
        },
        mappings = {
            scrollU = '<C-u>',
            scrollD = '<C-d>',
            jumpTop = '[',
            jumpBot = ']'

        }
    },
    provider_selector = function(bufnr, filetype, buftype)
        return { 'treesitter', 'indent' }
    end
})

vim.keymap.set('n', 'zr', require('ufo').openAllFolds)
vim.keymap.set('n', 'zm', require('ufo').closeAllFolds)
vim.keymap.set('n', 'zj', require('ufo').goNextClosedFold)
vim.keymap.set('n', 'zk', require('ufo').goPreviousClosedFold)
vim.keymap.set('n', 'zK', function()
    local winid = require('ufo').peekFoldedLinesUnderCursor()
    if not winid then
        -- choose one of coc.nvim and nvim lsp
        vim.lsp.buf.hover()
    else
        vim.cmd('Lspsaga hover_doc')
    end
end)

local builtin = require("statuscol.builtin")
cfg = {
    relculright = true,
    segments = {
        { text = { "%s", "" }, click = "v:lua.ScSa" },
        {
            text = { builtin.foldfunc, "" },
            click = "v:lua.ScFa",
        },
        {
            text = { builtin.lnumfunc, " " },
            condition = { true, builtin.not_empty },
            click = "v:lua.ScLa",
        }

    }
}

require("statuscol").setup(cfg)
--
