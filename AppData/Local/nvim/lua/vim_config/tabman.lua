local tabman = {}
tabman.closetab = function()
    local buffers = vim.fn.tabpagebuflist(vim.fn.tabpagenr()) -- Get buffer info for current tab
    for _, buffer in pairs(buffers) do
        local modified = vim.fn.getbufvar(buffer, "&mod")
        if modified == 1 then
            print("Cannot close: Unsaved buffers!")
            return false
        end
    end
    vim.cmd(":tabclose")
end

tabman.newtab = function()
    vim.cmd(":tabnew")
    tabman.onnewtab()
end

tabman.onnewtab = function()
    vim.cmd(":75vsplit")
    vim.cmd(":term")
end

return tabman