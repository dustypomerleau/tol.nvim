# Tol.nvim

This is a Neovim port of my [Tol theme for VS Code](https://github.com/dustypomerleau/tol).
As always, credit to [Paul Tol](https://personal.sron.nl/~pault/) for the base colors and inspiration.

The theme is in early beta—more plugin support soon.

[Rainbow delimiters][] are enabled in the screenshot.

![tol screenshot](./images/tol.png)

## Supported plugins

- [CoC][]
- [Git Signs][]
- [Indent Blankline][]
- [Leap][]
- [LSP Diagnostics][]
- [Lualine][]
- [Rainbow Delimiters][]
- [Treesitter][]
  <!-- - [aerial.nvim](https://github.com/stevearc/aerial.nvim) -->
  <!-- - [BufferLine](https://github.com/akinsho/nvim-bufferline.lua) -->
  <!-- - [Dashboard](https://github.com/glepnir/dashboard-nvim) -->
  <!-- - [Git Gutter](https://github.com/airblade/vim-gitgutter) -->
  <!-- - [headlines.nvim](https://github.com/lukas-reineke/headlines.nvim) -->
  <!-- - [Lsp Saga](https://github.com/glepnir/lspsaga.nvim) -->
  <!-- - [LSP Trouble](https://github.com/folke/lsp-trouble.nvim) -->
  <!-- - [mini.nvim](https://github.com/echasnovski/mini.nvim) -->
  <!-- - [Neogit](https://github.com/TimUntersberger/neogit) -->
  <!-- - [nvim-notify](https://github.com/rcarriga/nvim-notify) -->
  <!-- - [Nvim-Tree.lua](https://github.com/kyazdani42/nvim-tree.lua) -->
  <!-- - [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) -->
  <!-- - [vim-which-key](https://github.com/liuchengxu/vim-which-key) -->

## Installation

```vim
" vim-plug
Plug 'dustypomerleau/tol.nvim'
```

```lua
-- lazy.nvim
require("lazy").setup({ "dustypomerleau/tol.nvim" })
```

## Usage

Enable the colorscheme:

```vim
" vimscript
colorscheme tol
```

```lua
-- lua
vim.cmd[[colorscheme tol]]
```

Enable the Lualine theme:

```lua
require("lualine").setup { options = { theme = "tol" }}
```

Set up Rainbow Delimiters:

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

[CoC]: https://github.com/neoclide/coc.nvim
[Git Signs]: https://github.com/lewis6991/gitsigns.nvim
[Indent Blankline]: https://github.com/lukas-reineke/indent-blankline.nvim
[Leap]: https://github.com/ggandor/leap.nvim
[LSP Diagnostics]: https://neovim.io/doc/user/lsp.html
[Lualine]: https://github.com/hoob3rt/lualine.nvim
[Rainbow Delimiters]: https://github.com/HiPhish/rainbow-delimiters.nvim
[Treesitter]: https://github.com/nvim-treesitter/nvim-treesitter
