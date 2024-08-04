vim.api.nvim_create_user_command("Setup", function()
    vim.cmd([[
        tabnew
        lc ~/AppData/Local/Packages/Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe/LocalState/
        edit settings.json
        vert new
        lc ~/Documents/PowerShell/
        edit Microsoft.PowerShell_profile.ps1
        vert new
        tc ~/AppData/Local/nvim
        edit lua/vim_config/init.lua
        botright new
        lc ~/
        term
    ]])
end, {})
