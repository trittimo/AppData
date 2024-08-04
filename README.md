# Setup instructions
This repository is meant to be cloned into the root of your user directory (aka `~`).

Run `winget install llvm` (for treesitter support)
* Add `C:\Program Files\LLVM\bin` to path
* Run `winget install BurntSushi.ripgrep.MSVC`

After cloning, simply restart windows terminal

# NVim setup
## Building from source
1. Follow the instructions [here](https://github.com/neovim/neovim/blob/master/BUILD.md#building-on-windows)
2. Make sure the VIMRUNTIME environment variable is set properly (should be done by the PS profile)

## Advanced keybinds
Some keybinds require tinkering with the Windows Terminal `settings.json` file. Here are some handy links:
* http://www.leonerd.org.uk/hacks/fixterms/
* https://stackoverflow.com/questions/16359878/how-to-map-shift-enter#comment134614136_42461580
* https://en.wikipedia.org/wiki/ASCII#Printable_characters

Quote:
> These mappings correspond to the CSI u codes. You can refer to them here: [leonerd.org.uk](leonerd.org.uk/hacks/fixterms).
> So <ESC>[13;2u means: - <ESC>[: CSI input - 13 represents \r according to the ASCII table: [wikipedia](en.wikipedia.org/wiki/ASCII#Control_code_chart)
> ;2u represents the Shift modifier
