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

    local coc = theme.loadCoc()
    local custom = theme.loadCustom()
    local lsp = theme.loadLsp()
    local plugins = theme.loadPlugins()
    local syntax = theme.loadSyntax()
    local treesitter = theme.loadTreesitter()
    local ui = theme.loadUi()

    set_hl(syntax)
    set_hl(ui)
    set_hl(treesitter)
    set_hl(coc)
    set_hl(lsp)
    set_hl(custom)
    set_hl(plugins)
    theme.loadTerminal()
end

return util
