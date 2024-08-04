# Installing these settings
1. Navigate to `%LocalAppData%`
2. Clone this repository into that folder
3. Once nvim is open, run :PlugInstall

# Setting up Windows Terminal to accept certain keybinds like ctrl+shift+\]
1. Open: `%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json`
   * For preview: `%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json`
2. Add the following to the "actions" array (recommend commenting out others as they play havoc with vim):
   ```json
    {
        "keys": "shift+enter",
        "command": { "action": "sendInput", "input": "\u001b[13;2u" }
    },
    {
        "keys": "ctrl+enter",
        "command": { "action": "sendInput", "input": "\u001b[13;5u" }
    },
    {
        "keys": "ctrl+shift+[",
        "command": { "action": "sendInput", "input": "\u001b[91;6u" }
    },
    {
        "keys": "ctrl+shift+]",
        "command": { "action": "sendInput", "input": "\u001b[93;6u" }
    },
    {
        "keys": "ctrl+1",
        "command": { "action": "sendInput", "input": "\u001b[49;5u" }
    },
    {
        "keys": "ctrl+2",
        "command": { "action": "sendInput", "input": "\u001b[50;5u" }
    },
    {
        "keys": "ctrl+3",
        "command": { "action": "sendInput", "input": "\u001b[51;5u" }
    },
    {
        "keys": "ctrl+4",
        "command": { "action": "sendInput", "input": "\u001b[52;5u" }
    },
    {
        "keys": "ctrl+5",
        "command": { "action": "sendInput", "input": "\u001b[53;5u" }
    },
    {
        "keys": "ctrl+6",
        "command": { "action": "sendInput", "input": "\u001b[54;5u" }
    },
    {
        "keys": "ctrl+7",
        "command": { "action": "sendInput", "input": "\u001b[55;5u" }
    },
    {
        "keys": "ctrl+8",
        "command": { "action": "sendInput", "input": "\u001b[56;5u" }
    },
    {
        "keys": "ctrl+9",
        "command": { "action": "sendInput", "input": "\u001b[57;5u" }
    },
    {
        "keys": "ctrl+`",
        "command": { "action": "sendInput", "input": "\u001b[96;5u" }
    },
    {
        "keys": "ctrl+shift+h",
        "command": { "action": "sendInput", "input": "\u001b[104;6u" }
    },
    {
        "keys": "ctrl+shift+j",
        "command": { "action": "sendInput", "input": "\u001b[106;6u" }
    },
    {
        "keys": "ctrl+shift+k",
        "command": { "action": "sendInput", "input": "\u001b[107;6u" }
    },
    {
        "keys": "ctrl+shift+l",
        "command": { "action": "sendInput", "input": "\u001b[108;6u" }
    },
    {
        "keys": "ctrl+tab",
        "command": { "action": "sendInput", "input": "\u001b[09;5u" }
    },
    {
        "keys": "ctrl+shift+tab",
        "command": { "action": "sendInput", "input": "\u001b[09;6u" }
    },
    {
        "keys": "ctrl+w",
        "command": { "action": "sendInput", "input": "\u001b[119;5u" }
    }
    ```
3. To add more such keybinds, refer to:
   * http://www.leonerd.org.uk/hacks/fixterms/
   * https://stackoverflow.com/questions/16359878/how-to-map-shift-enter#comment134614136_42461580
   * https://en.wikipedia.org/wiki/ASCII#Printable_characters
   ```
   These mappings correspond to the CSI u codes. You can refer to them here: leonerd.org.uk/hacks/fixterms. So <ESC>[13;2u means: - <ESC>[: CSI input - 13 represents \r according to the ASCII table: en.wikipedia.org/wiki/ASCII#Control_code_chart - ;2u represents the Shift modifier
   ```

# Installing nvim from source
1. Follow the instructions [here](https://github.com/neovim/neovim/blob/master/BUILD.md#building-on-windows)
2. Make sure the VIMRUNTIME environment variable is set properly (should be done by the PS profile)
