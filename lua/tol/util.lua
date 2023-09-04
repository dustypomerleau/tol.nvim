local util = {}
local theme = require("tol.theme")

local set_hl = function(table)
    for group, conf in pairs(table) do
        vim.api.nvim_set_hl(0, group, conf)
    end
end

function util.load()
    vim.api.nvim_command("hi clear")
    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "tol"

    local syntax = theme.loadSyntax()
    local ui = theme.loadUi()
    local treesitter = theme.loadTreesitter()
    local coc = theme.loadCoc()
    local lsp = theme.loadLsp()
    local custom = theme.loadCustom()

    set_hl(syntax)
    set_hl(ui)
    set_hl(treesitter)
    set_hl(coc)
    set_hl(lsp)
    set_hl(custom)
    theme.loadTerminal()
end

return util
