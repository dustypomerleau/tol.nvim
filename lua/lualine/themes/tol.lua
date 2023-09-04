local tol = require("tol.colors")

return {
    normal = {
        a = { fg = tol.taupe, bg = tol.bg_shade1, },
        b = { fg = tol.taupe, bg = tol.bg_shade1, },
        c = { fg = tol.sky, bg = tol.bg_shade1, },
        x = { fg = tol.taupe, bg = tol.bg_shade1, },
        y = { fg = tol.taupe, bg = tol.bg_shade1, },
        z = { fg = tol.taupe, bg = tol.bg_shade1, },
    },

    insert = {
        a = { fg = tol.purple, bg = tol.bg_shade1, },
        z = { fg = tol.purple, bg = tol.bg_shade1, },
    },

    visual = {
        a = { fg = tol.cyan, bg = tol.bg_shade1, },
        z = { fg = tol.cyan, bg = tol.bg_shade1, },
    },

    command = {
        a = { fg = tol.lemon, bg = tol.bg_shade1, },
        z = { fg = tol.lemon, bg = tol.bg_shade1, },
    },

    replace = {
        a = { fg = tol.sky, bg = tol.bg_shade1, },
        z = { fg = tol.sky, bg = tol.bg_shade1, },
    },

    inactive = {
        c = { fg = tol.ui_gray, bg = tol.bg_shade1, },
        x = { fg = tol.ui_gray, bg = tol.bg_shade1, },
    },
}
