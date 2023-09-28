# Tol.nvim

Tol.nvim is a complete rework of my [Tol theme for VS Code](https://github.com/dustypomerleau/tol), with more consistent highlighting across languages.
It also has better separation of UI and syntax palettes, so it's easier to distinguish tooling feedback from code.
Tol believes that punctuation and delimiters are first-class citizens—we hope you do, too.

As always, credit to [Paul Tol](https://personal.sron.nl/~pault/) for the base colors and inspiration.

[Rainbow delimiters][] and [Lualine][] are used in the screenshot.

![Tol screenshot](images/tol.png)

## Supported plugins

- [CoC][]
- [Cmp][]
- [FZF Lua][]
- [Flash][]
- [Gitsigns][]
- [Indent Blankline][]
- [Leap][]
- [LSP Diagnostics][]
- [Lualine][]
- [Notify][]
- [Rainbow Delimiters][]
- [Telescope][]
- [Treesitter][]
- [Trouble][]
- [Yanky][]

Your favorite plugin might not be supported yet. Feel free to submit a PR.

## Installation

```lua
-- lazy.nvim
require("lazy").setup({
    {
        "dustypomerleau/tol.nvim",
        lazy = false, -- load the colorscheme at startup
        priority = 1000, -- load colorscheme first
        config = true,
    },
})
```

```vim
" vim-plug
call plug#begin()
    Plug 'dustypomerleau/tol.nvim'
call plug#end()

colorscheme tol
```

## Extras

Enable the Lualine theme:

```lua
require("lualine").setup({ options = { theme = "tol" }})
```

Set up Rainbow Delimiters (3 levels are provided):

```lua
local rainbow_delimiters = require("rainbow-delimiters")

vim.g.rainbow_delimiters = {
    strategy = { [""] = rainbow_delimiters.strategy["global"] },
    query = { [""] = "rainbow-delimiters" },
    highlight = {
        "RainbowDelimiterRed",
        "RainbowDelimiterYellow",
        "RainbowDelimiterBlue",
    }
}
```

Recommended settings for Indent Blankline version 3:

```lua
-- example configuration using lazy.nvim
-- matches the Rainbow Delimiters bracket color only when the scope is active
{
    "lukas-reineke/indent-blankline.nvim",
    lazy = false, -- load at startup
    config = function()
        require("ibl").setup({
            indent = {
                -- use a lighter weight for the indent guide
                char = "│", -- box drawings light vertical (U+2502)
                highlight = "LineNr",
            },
            scope = {
                show_start = false, -- don't underline the start of the scope
                highlight = { "RainbowRed", "RainbowYellow", "RainbowBlue", },
            },
        })
    end,
},
```

If you frequently change color schemes, you will need to set up hooks, as described in the [Indent Blankline][] README.


[CoC]: https://github.com/neoclide/coc.nvim
[Cmp]: https://github.com/hrsh7th/nvim-cmp 
[Flash]: https://github.com/folke/flash.nvim
[FZF Lua]: https://github.com/ibhagwan/fzf-lua
[Gitsigns]: https://github.com/lewis6991/gitsigns.nvim
[Indent Blankline]: https://github.com/lukas-reineke/indent-blankline.nvim
[Leap]: https://github.com/ggandor/leap.nvim
[LSP Diagnostics]: https://neovim.io/doc/user/lsp.html
[Lualine]: https://github.com/hoob3rt/lualine.nvim
[Notify]: https://github.com/rcarriga/nvim-notify 
[Rainbow Delimiters]: https://github.com/HiPhish/rainbow-delimiters.nvim
[Telescope]: https://github.com/nvim-telescope/telescope.nvim
[Treesitter]: https://github.com/nvim-treesitter/nvim-treesitter
[Trouble]: https://github.com/folke/trouble.nvim
[Yanky]: https://github.com/gbprod/yanky.nvim
