-- Colorscheme name:    tol.nvim
-- Description:         Port of the Tol theme for VS Code, using the base palette developed by Paul Tol
-- Author:              https://github.com/dustypomerleau

local util = require("tol.util")

local M = {}

function M.setup()
    util.load()
end

-- for backwards compatibility
M.colorscheme = M.setup

M.setup()

return M
