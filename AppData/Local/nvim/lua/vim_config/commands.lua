vim.api.nvim_create_user_command("Init", function()
    vim.cmd([[
        lc ~\\AppData\\Local\\nvim\\lua\\vim_config\\
        edit init.lua
    ]])
end, {})

vim.api.nvim_create_user_command("PwshKeybinds", function()
    vim.cmd([[
        lc ~\\AppData\\Local\\Packages\\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\\LocalState
        edit settings.json
    ]])
end, {})
