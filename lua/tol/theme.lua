-- see neovim repo at src/nvim/highlight_group.c

local t = require("tol.colors")

local theme = {}

theme.loadSyntax = function()
    return {
        Boolean = { fg = t.pink, },
        Character = { fg = t.forest, },
        Comment = { fg = t.comment, },
        Conceal = { fg = t.none, bg = t.bg, },
        Conditional = { fg = t.orange, },
        Constant = { fg = t.gray, },
        Debug = { fg = t.error, },
        Define = { fg = t.orange, },
        Delimiter = { fg = t.sky, },
        Error = { undercurl = true, sp = t.error, },
        Exception = { fg = t.orange, }, -- try, catch
        Float = { fg = t.pink, }, -- a floating point numeric constant
        Function = { fg = t.green, },
        htmlH1 = { fg = t.purple, bold = true, },
        htmlH2 = { fg = t.lemon, bold = true, },
        htmlH3 = { fg = t.cyan, bold = true, },
        htmlH4 = { fg = t.purple, bold = true, },
        htmlH5 = { fg = t.lemon, bold = true, },
        htmlLink = { fg = t.sky, underline = true, },
        Identifier = { fg = t.blue, }, -- types
        Ignore = { fg = t.comment, }, -- left blank, hidden
        Include = { fg = t.orange, },
        Keyword = { fg = t.orange, },
        Label = { fg = t.orange, },
        Macro = { fg = t.yellow, },
        markdownH1 = { fg = t.purple, bold = true, },
        markdownH1Delimiter = { fg = t.sky, },
        markdownH2 = { fg = t.lemon, bold = true, },
        markdownH2Delimiter = { fg = t.sky, },
        markdownH3 = { fg = t.cyan, bold = true, },
        markdownH3Delimiter = { fg = t.sky, },
        Number = { fg = t.pink, },
        Operator = { fg = t.orange, },
        PreCondit = { fg = t.orange, }, -- preprocessor #if, #else
        PreProc = { fg = t.orange, }, -- generic Preprocessor
        Punctuation = { fg = t.sky, },
        Repeat = { fg = t.orange, },
        Special = { fg = t.taupe, },
        SpecialChar = { fg = t.green, },
        SpecialComment = { fg = t.taupe, },
        Statement = { fg = t.taupe, },
        StorageClass = { fg = t.orange, },
        String = { fg = t.forest, },
        Structure = { fg = t.blue, }, -- struct, enum
        Tag = { fg = t.pink, },
        Title = { fg = t.orange, bold = true, },
        Todo = { fg = t.sky, bold = true, }, -- todo, fixme, etc.
        Type = { fg = t.blue, },
        Typedef = { fg = t.orange, },
        Underlined = { underline = true, },
    }
end

theme.loadUi = function()
    return {
        ColorColumn = { fg = t.none, bg = t.bg_mono1, },
        CommandMode = { fg = t.lemon, },
        Conceal = { fg = t.comment, },
        CurSearch = { fg = t.cursor_yellow, bg = t.search_focused_bg, },
        Cursor = { fg = t.cursor_yellow, bg = t.cursor_pink, }, -- the character under the cursor
        CursorColumn = { fg = t.none, bg = t.bg_shade1, },
        CursorIM = { fg = t.cursor_yellow, bg = t.cursor_pink, },
        CursorLine = { fg = t.none, bg = t.bg_shade1, },
        CursorLineNr = { fg = t.purple, },
        DiffAdd = { bg = t.diff_plus, },
        DiffChange = { bg = t.bg_mono1, },
        DiffDelete = { bg = t.diff_minus, },
        DiffText = { fg = t.none, bg = t.bg_mono3, }, -- let original fg groups show through in diffs
        Directory = { fg = t.blue, }, -- directory names
        EndOfBuffer = { fg = t.ui_gray, },
        ErrorMsg = { fg = t.error, },
        FloatBorder = { fg = t.ui_gray, },
        FloatTitle = { fg = t.taupe, },
        FoldColumn = { fg = t.modified, },
        Folded = { fg = t.modified, },
        healthError = { fg = t.error, },
        healthSuccess = { fg = t.modified, },
        healthWarning = { fg = t.warning, },
        IncSearch = { fg = t.search_fg, bg = t.search_bg, },
        InsertMode = { fg = t.purple, },
        LineNr = { fg = t.ui_gray, },
        MatchParen = { fg = t.cursor_pink, bg = t.bg_mono3, bold = true, },
        ModeMsg = { fg = t.taupe, },
        MoreMsg = { fg = t.taupe, },
        NonText = { fg = t.comment, },
        Normal = { fg = t.taupe, bg = t.bg, },
        NormalFloat = { fg = t.taupe, bg = t.bg_mono1, },
        NormalMode = { fg = t.taupe, },
        Pmenu = { fg = t.taupe, bg = t.bg_mono1, },
        PmenuSbar = { bg = t.bg_shade1, },
        PmenuSel = { fg = t.search_fg, bg = t.bg_mono3, },
        PmenuThumb = { bg = t.ui_gray, },
        qfLineNr = { fg = t.ui_gray, },
        Question = { fg = t.taupe, },
        QuickFixLine = { fg = t.gray, },
        ReplaceMode = { fg = t.sky, },
        Search = { fg = t.search_fg, bg = t.search_bg, },
        SignColumn = { bg = t.bg, },
        SpecialKey = { fg = t.comment, },
        SpellBad = { undercurl = true, sp = t.error, },
        SpellCap = { fg = t.warning, undercurl = true, },
        SpellLocal = { fg = t.info, undercurl = true, },
        SpellRare = { fg = t.info, undercurl = true, },
        StatusLine = { fg = t.taupe, bg = t.bg_shade1, },
        StatusLineNC = { fg = t.ui_gray, bg = t.bg_shade1, },
        StatusLineTerm = { fg = t.taupe, bg = t.bg_shade1, },
        StatusLineTermNC = { fg = t.ui_gray, bg = t.bg_shade1, },
        Substitute = { fg = t.search_fg, bg = t.search_bg, },
        Tabline = { fg = t.ui_gray, bg = t.bg, },
        TablineFill = { fg = t.ui_gray, bg = t.bg_shade1, },
        TablineSel = { fg = t.taupe, bg = t.bg_mono1, },
        TermCursor = { fg = t.cursor_yellow, bg = t.cursor_pink, },
        TermCursorNC = { fg = t.bg, bg = t.ui_gray, },
        ToolbarButton = { fg = t.blue, bg = t.none, bold = true, },
        ToolbarLine = { fg = t.taupe, bg = t.none, },
        VertSplit = { fg = t.bg, bg = t.bg, }, -- deprecated in favor of WinSeparator, but still works
        Visual = { fg = t.none, bg = t.bg_mono3, },
        VisualMode = { fg = t.cyan, },
        VisualNOS = { fg = t.none, bg = t.bg_mono3, },
        WarningMsg = { fg = t.warning, },
        Warnings = { fg = t.warning, },
        WildMenu = { fg = t.orange, bg = t.none, bold = true, },
        WinSeparator = { fg = t.bg, bg = t.bg, },
    }
end

theme.loadTerminal = function()
    vim.g.terminal_color_0 = t.bg_shade1 -- black
    vim.g.terminal_color_1 = t.orange -- red
    vim.g.terminal_color_2 = t.forest -- green
    vim.g.terminal_color_3 = t.yellow -- yellow
    vim.g.terminal_color_4 = t.blue -- blue
    vim.g.terminal_color_5 = t.pink -- magenta
    vim.g.terminal_color_6 = t.cyan -- cyan
    vim.g.terminal_color_7 = t.taupe -- white
    vim.g.terminal_color_8 = t.bg_tint2 -- bright black
    vim.g.terminal_color_9 = t.orange -- bright red
    vim.g.terminal_color_10 = t.green -- bright green
    vim.g.terminal_color_11 = t.yellow -- bright yellow
    vim.g.terminal_color_12 = "#9fc3e7" -- bright blue
    vim.g.terminal_color_13 = t.pink -- bright magenta
    vim.g.terminal_color_14 = t.sky -- bright cyan
    vim.g.terminal_color_15 = t.fg_tint2 -- bright white
end

theme.loadTreesitter = function()
    return {
        ["@attribute"] = { fg = t.gray, },
        ["@boolean"] = { fg = t.pink, },
        ["@character"] = { fg = t.forest, },
        ["@comment"] = { fg = t.comment, },
        ["@comment.documentation"] = { fg = t.comment, },
        ["@conditional"] = { fg = t.orange, },
        ["@constant"] = { fg = t.gray, },
        ["@constant.builtin"] = { fg = t.gray, },
        ["@constant.builtin.lua"] = { fg = t.pink, },
        ["@constant.macro"] = { fg = t.gray, },
        ["@constructor"] = { fg = t.green, },
        ["@error"] = { undercurl = true, sp = t.error, },
        ["@exception"] = { fg = t.orange, },
        ["@field"] = { fg = t.gray, },
        ["@float"] = { fg = t.pink, },
        ["@function"] = { fg = t.green, },
        ["@function.builtin"] = { fg = t.green, },
        ["@function.macro"] = { fg = t.yellow, },
        ["@include"] = { fg = t.orange, },
        ["@keyword"] = { fg = t.orange, },
        ["@keyword.function"] = { fg = t.orange, },
        ["@keyword.operator"] = { fg = t.orange, },
        ["@keyword.return"] = { fg = t.orange, },
        ["@keyword.storage.lifetime"] = { fg = t.pink, },
        ["@label"] = { fg = t.gray, },
        ["@markup.environment"] = { link = "@text.environment", },
        ["@markup.environment.name"] = { link = "@text.environment.name", },
        ["@markup.heading"] = { link = "@text.title", },
        ["@markup.italic"] = { link = "@text.emphasis", },
        ["@markup.link"] = { link = "@text.reference", },
        ["@markup.link.markdown_inline"] = { link = "@punctuation.bracket", },
        ["@markup.link.url"] = { link = "@string", },
        ["@markup.list"] = { fg = t.pink, bold = true, },
        ["@markup.math"] = { fg = t.gray, },
        ["@markup.raw"] = { link = "@text.literal", },
        ["@markup.strong"] = { link = "@text.strong", },
        ["@method"] = { fg = t.green, },
        ["@module"] = { link = "@lsp.type.namespace", },
        ["@namespace"] = { fg = t.taupe, },
        ["@namespace.latex"] = { fg = t.gray, },
        ["@namespace.vim"] = { fg = t.gray, },
        ["@number"] = { fg = t.pink, },
        ["@operator"] = { fg = t.orange, },
        ["@parameter"] = { fg = t.taupe, },
        ["@preproc"] = { fg = t.orange, },
        ["@property"] = { fg = t.gray, },
        ["@punctuation"] = { fg = t.sky, },
        ["@punctuation.bracket"] = { fg = t.purple, }, -- some brackets are missed by rainbow,
        ["@punctuation.delimiter"] = { fg = t.sky, },
        ["@punctuation.special"] = { fg = t.sky, },
        ["@punctuation.special.latex"] = { fg = t.pink, },
        ["@repeat"] = { fg = t.orange, },
        ["@storageclass.lifetime.rust"] = { fg = t.pink, },
        ["@string"] = { fg = t.forest, },
        ["@string.escape"] = { fg = t.green, },
        ["@string.regex"] = { fg = t.pink, },
        ["@string.special"] = { fg = t.green, },
        ["@symbol"] = { fg = t.gray, },
        ["@tag"] = { fg = t.pink, },
        ["@tag.attribute"] = { fg = t.gray, },
        ["@tag.delimiter"] = { fg = t.sky, },
        ["@text"] = { fg = t.taupe, },
        ["@text.emphasis"] = { fg = t.sky, italic = true, },
        ["@text.environment"] = { fg = t.gray, },
        ["@text.environment.name"] = { fg = t.blue, },
        ["@text.literal"] = { fg = t.yellow, }, -- inline code
        ["@text.math"] = { fg = t.pink, },
        ["@text.reference"] = { fg = t.pink, },
        ["@text.strike"] = { fg = t.comment, strikethrough = true, },
        ["@text.strong"] = { fg = t.sky, bold = true, },
        ["@text.title"] = { fg = t.orange, },
        ["@text.underline"] = { fg = t.yellow, underline = true, },
        ["@text.uri"] = { fg = t.forest, },
        ["@text.warning"] = { fg = t.warning, },
        ["@type"] = { fg = t.blue, },
        ["@type.builtin"] = { fg = t.yellow, },
        ["@type.qualifier"] = { fg = t.orange, },
        ["@variable"] = { fg = t.taupe, },
        ["@variable.builtin"] = { fg = t.gray, },
    }
end

theme.loadCustom = function()
    return {
        tmuxOptions = { link = "@field", },
        zshBrackets = { link = "Punctuation", },
        zshDeref = { fg = t.pink, },
        zshOperator = { link = "Operator", },
        zshParentheses = { link = "Punctuation", },
        zshPrecommand = { link = "Keyword", },
        zshShortDeref = { link = "zshDeref", },
        zshSubstDelim = { link = "Punctuation", },
        zshSubstQuoted = { link = "Macro", },
    }
end

theme.loadCoc = function()
    return {
        CocErrorSign = { fg = t.error, },
        CocErrorVirtualText = { fg = t.error, },
        CocHintSign = { fg = t.info, },
        CocHintVirtualText = { fg = t.info, },
        CocInfoSign = { fg = t.info, },
        CocInfoVirtualText = { fg = t.info, },
        CocSemClass = { fg = t.blue, },
        CocSemDecorator = { fg = t.gray, },
        CocSemEnum = { fg = t.gray, },
        CocSemFunction = { fg = t.green, },
        CocSemInterface = { fg = t.pink, },
        CocSemKeyword = { fg = t.orange, },
        CocSemMacro = { fg = t.yellow, },
        CocSemMethod = { fg = t.green, },
        CocSemNamespace = { fg = t.taupe, },
        CocSemParameter = { fg = t.taupe, },
        CocSemProperty = { fg = t.gray, },
        CocSemStruct = { fg = t.blue, },
        CocSemType = { fg = t.blue, },
        CocSemTypeParameter = { fg = t.blue, },
        CocSemVariable = { fg = t.taupe, },
        CocWarningSign = { fg = t.warning, },
        CocWarningVirtualText = { fg = t.warning, },
        -- " *CocFadeOut* for faded out text, such as for highlighting unnecessary code.
        -- " *CocErrorHighlight* for error code range.
        -- " *CocWarningHighlight* for warning code range.
        -- " *CocInfoHighlight* for information code range.
        -- " *CocHintHighlight* for hint code range.
        -- " *CocDeprecatedHighlight* for deprecated code range, links to " |CocStrikeThrough| by default.
        -- " *CocUnusedHighlight* for unnecessary code range, links to |CocFadeOut| by " default.
        -- " *CocErrorLine* line highlight of sign which contains error.
        -- " *CocWarningLine* line highlight of sign which contains warning.
        -- " *CocInfoLine* line highlight of sign which information.
        -- " *CocHintLine* line highlight of sign which contains hint.
        CocHighlightText = { bg = t.bg_mono1, },
        -- " *CocHighlightRead* for `Read` kind of document symbol.
        -- " *CocHighlightWrite* for `Write` kind of document symbol.
        CocFloating = { fg = t.taupe, bg = t.bg_mono1, },
        CocFloatThumb = { fg = t.ui_gray, },
        CocFloatSbar = { bg = t.bg_shade1, },
        CocFloatDividingLine = { fg = t.ui_gray, },
        -- " *CocFloatActive* for activated text, links to |CocSearch| by default.
        CocErrorFloat = { fg = t.error, },
        CocHintFloat = { fg = t.info, },
        CocInlayHint = { fg = t.comment, },
        -- CocInlayHintParameter = { fg = t.taupe, },
        -- CocInlayHintType = { fg = t.blue, },
        CocNotificationProgress = { fg = t.sky, },
        -- " *CocNotificationButton* for action buttons in notification window.
        -- " *CocNotificationError* for highlight border of error notification.
        -- " *CocNotificationWarning* for highlight border of warning notification.
        -- " *CocNotificationInfo* for highlight border of info notification.
        CocSearch = { fg = t.orange, },
        -- " *CocSearch* for matched characters.
        -- " *CocListLine* for current cursor line.
        -- " *CocListSearch* for matched characters.
        -- " *CocListMode* for mode text in the statusline.
        -- " *CocListPath* for cwd text in the statusline.
        -- " *CocSelectedText* for sign text of selected lines (multiple selection only).
        -- " *CocSelectedLine* for line highlight of selected lines (multiple selection only).
        -- " *CocTreeTitle* for title in tree view.
        -- " *CocTreeDescription* for description beside label.
        -- " *CocTreeOpenClose* for open and close icon in tree view.
        -- " *CocTreeSelected* for highlight lines contains selected node.
        -- " *CocPumSearch* for matched input characters, linked to |CocSearch| by default.
        -- " *CocPumDetail* for highlight label details that follows label (including " possible detail and description).
        -- " *CocPumMenu* for menu of complete item.
        -- " *CocPumShortcut* for shortcut text of source.
        -- " *CocPumDeprecated* for deprecated label.
        -- " *CocPumVirtualText* for virtual text which enabled by " |coc-config-suggest-virtualText|
        -- " *CocSymbolDefault* linked to |hl-MoreMsg| by default.
        -- " *CocSymbolText*
        -- " *CocSymbolUnit*
        -- " *CocSymbolValue*
        -- " *CocSymbolKeyword*
        -- " *CocSymbolSnippet*
        -- " *CocSymbolColor*
        -- " *CocSymbolReference*
        -- " *CocSymbolFolder*
        -- " *CocSymbolFile*
        -- " *CocSymbolModule*
        -- " *CocSymbolNamespace*
        -- " *CocSymbolPackage*
        -- " *CocSymbolClass*
        -- " *CocSymbolMethod*
        -- " *CocSymbolProperty*
        -- " *CocSymbolField*
        -- " *CocSymbolConstructor*
        -- " *CocSymbolEnum*
        -- " *CocSymbolInterface*
        -- " *CocSymbolFunction*
        -- " *CocSymbolVariable*
        -- " *CocSymbolConstant*
        -- " *CocSymbolString*
        -- " *CocSymbolNumber*
        -- " *CocSymbolBoolean*
        -- " *CocSymbolArray*
        -- " *CocSymbolObject*
        -- " *CocSymbolKey*
        -- " *CocSymbolNull*
        -- " *CocSymbolEnumMember*
        -- " *CocSymbolStruct*
        -- " *CocSymbolEvent*
        -- " *CocSymbolOperator*
        -- " *CocSymbolTypeParameter*
        -- " *CocDisabled* highlight for disabled items, eg: menu item.
        -- " *CocCodeLens* for virtual text of codeLens.
        -- " *CocCursorRange* for highlight of activated cursors ranges.
        -- " *CocLinkedEditing* for highlight of activated linked editing ranges.
        -- " *CocHoverRange* for range of current hovered symbol.
        -- " *CocMenuSel* for current menu item in menu dialog (should only provide " background color).
        -- " *CocSelectedRange* for highlight ranges of outgoing calls.
        -- " *CocSnippetVisual* for highlight snippet placeholders.
        -- " *CocLink* for highlight document links.
        -- " *CocInputBoxVirtualText* for highlight placeholder of input box.
    }
end

theme.loadLsp = function()
    return {
        DiagnosticError = { link = "LspDiagnosticsDefaultError", },
        DiagnosticFloatingError = { link = "LspDiagnosticsFloatingError", },
        DiagnosticFloatingHint = { link = "LspDiagnosticsFloatingHint", },
        DiagnosticFloatingInfo = { link = "LspDiagnosticsFloatingInformation", },
        DiagnosticFloatingWarn = { link = "LspDiagnosticsFloatingWarning", },
        DiagnosticHint = { link = "LspDiagnosticsDefaultHint", },
        DiagnosticInfo = { link = "LspDiagnosticsDefaultInformation", },
        DiagnosticSignError = { link = "LspDiagnosticsSignError", },
        DiagnosticSignHint = { link = "LspDiagnosticsSignHint", },
        DiagnosticSignInfo = { link = "LspDiagnosticsSignInformation", },
        DiagnosticSignWarn = { link = "LspDiagnosticsSignWarning", },
        DiagnosticUnderlineError = { link = "LspDiagnosticsUnderlineError", },
        DiagnosticUnderlineHint = { link = "LspDiagnosticsUnderlineHint", },
        DiagnosticUnderlineInfo = { link = "LspDiagnosticsUnderlineInformation", },
        DiagnosticUnderlineWarn = { link = "LspDiagnosticsUnderlineWarning", },
        DiagnosticUnnecessary = {}, -- override commenting out code gated by #[cfg()], etc.
        DiagnosticVirtualTextError = { link = "LspDiagnosticsVirtualTextError", },
        DiagnosticVirtualTextHint = { link = "LspDiagnosticsVirtualTextHint", },
        DiagnosticVirtualTextInfo = { link = "LspDiagnosticsVirtualTextInformation", },
        DiagnosticVirtualTextWarn = { link = "LspDiagnosticsVirtualTextWarning", },
        DiagnosticWarn = { link = "LspDiagnosticsDefaultWarning", },
        LspDiagnosticsDefaultError = { fg = t.error, },
        LspDiagnosticsDefaultHint = { fg = t.info, },
        LspDiagnosticsDefaultInformation = { fg = t.info, },
        LspDiagnosticsDefaultWarning = { fg = t.warning, },
        LspDiagnosticsFloatingError = { fg = t.error, },
        LspDiagnosticsFloatingHint = { fg = t.info, },
        LspDiagnosticsFloatingInformation = { fg = t.info, },
        LspDiagnosticsFloatingWarning = { fg = t.warning, },
        LspDiagnosticsSignError = { fg = t.error, },
        LspDiagnosticsSignHint = { fg = t.info, },
        LspDiagnosticsSignInformation = { fg = t.info, },
        LspDiagnosticsSignWarning = { fg = t.warning, },
        LspDiagnosticsUnderlineError = { undercurl = true, sp = t.error, },
        LspDiagnosticsUnderlineHint = { undercurl = true, sp = t.info, },
        LspDiagnosticsUnderlineInformation = { undercurl = true, sp = t.info, },
        LspDiagnosticsUnderlineWarning = { undercurl = true, sp = t.warning, },
        LspDiagnosticsVirtualTextError = { fg = t.error, },
        LspDiagnosticsVirtualTextHint = { fg = t.info, },
        LspDiagnosticsVirtualTextInformation = { fg = t.info, },
        LspDiagnosticsVirtualTextWarning = { fg = t.warning, },
        LspReferenceRead = { bg = t.bg_mono1, },
        LspReferenceText = { bg = t.bg_mono1, },
        LspReferenceWrite = { bg = t.bg_mono1, },
        ["@lsp.mod.emph"] = { fg = t.sky, italic = true, },
        ["@lsp.mod.strong"] = { fg = t.sky, bold = true, },
        ["@lsp.type.attributeBracket"] = { fg = t.purple, },
        ["@lsp.type.builtinAttribute"] = { fg = t.gray, },
        ["@lsp.type.builtinType"] = { fg = t.yellow, },
        ["@lsp.type.class"] = { fg = t.blue, },
        ["@lsp.type.comment"] = { fg = t.comment, },
        ["@lsp.type.decorator"] = { fg = t.gray, },
        ["@lsp.type.delim"] = { fg = t.sky, },
        ["@lsp.type.derive"] = { fg = t.pink, },
        ["@lsp.type.enum"] = { fg = t.gray, },
        ["@lsp.type.enumMember"] = { fg = t.gray, },
        ["@lsp.type.escape"] = { fg = t.green, },
        ["@lsp.type.formatSpecifier"] = { link = "@punctuation.bracket", },
        ["@lsp.type.function"] = { fg = t.green, },
        ["@lsp.type.generic"] = { fg = t.gray, },
        ["@lsp.type.heading"] = { fg = t.orange, bold = true, },
        ["@lsp.type.interface"] = { fg = t.pink, },
        ["@lsp.type.keyword"] = { fg = t.orange, },
        ["@lsp.type.label"] = { fg = t.gray, },
        ["@lsp.type.lifetime"] = { fg = t.pink, },
        ["@lsp.type.link"] = { fg = t.forest, },
        ["@lsp.type.macro"] = { fg = t.yellow, },
        ["@lsp.type.marker"] = { fg = t.pink, bold = true, },
        ["@lsp.type.method"] = { fg = t.green, },
        ["@lsp.type.namespace"] = { fg = t.taupe, },
        ["@lsp.type.number"] = { fg = t.pink, },
        ["@lsp.type.operator"] = { fg = t.orange, },
        ["@lsp.type.parameter"] = { fg = t.taupe, },
        ["@lsp.type.pol"] = { fg = t.gray, },
        ["@lsp.type.property"] = { fg = t.gray, },
        ["@lsp.type.punct"] = { fg = t.sky, },
        ["@lsp.type.raw"] = { fg = t.yellow, },
        ["@lsp.type.ref"] = { fg = t.pink, },
        ["@lsp.type.selfKeyword"] = { fg = t.gray, },
        ["@lsp.type.selfTypeKeyword"] = { fg = t.blue, },
        ["@lsp.type.string"] = { fg = t.forest, },
        ["@lsp.type.struct"] = { fg = t.blue, },
        ["@lsp.type.type"] = { fg = t.blue, },
        ["@lsp.type.typeAlias"] = { fg = t.blue, },
        ["@lsp.type.typeParameter"] = { fg = t.blue, },
        ["@lsp.type.variable"] = { fg = t.taupe, },
        ["@lsp.typemod.text.emph"] = { fg = t.sky, italic = true, },
        ["@lsp.typemod.text.math"] = { fg = t.pink, },
        ["@lsp.typemod.text.strong"] = { fg = t.sky, bold = true, },
    }
end

theme.loadPlugins = function()
    return {
        -- Cmp
        CmpItemAbbrMatch = { fg = t.orange, bold = true, },
        CmpItemAbbrMatchFuzzy = { fg = t.orange, bold = true, },
        CmpItemKindClass = { link = "@lsp.type.class", },
        CmpItemKindColor = { fg = t.taupe, },
        CmpItemKindConstant = { link = "@constant", },
        CmpItemKindConstructor = { link = "@constructor", },
        CmpItemKindEnum = { link = "@lsp.type.enum", },
        CmpItemKindEnumMember = { link = "@lsp.type.enumMember", },
        CmpItemKindEvent = { fg = t.taupe, },
        CmpItemKindField = { link = "@field", },
        CmpItemKindFile = { fg = t.sky, },
        CmpItemKindFolder = { link = "Directory", },
        CmpItemKindFunction = { link = "@lsp.type.function", },
        CmpItemKindInterface = { link = "@lsp.type.interface", },
        CmpItemKindKeyword = { link = "@lsp.type.keyword", },
        CmpItemKindMethod = { link = "@lsp.type.method", },
        CmpItemKindModule = { link = "@lsp.type.namespace", },
        CmpItemKindOperator = { link = "@operator", },
        CmpItemKindProperty = { link = "@lsp.type.property", },
        CmpItemKindReference = { link = "@text.reference", },
        CmpItemKindSnippet = { link = "@lsp.type.macro", },
        CmpItemKindStruct = { link = "@lsp.type.struct", },
        CmpItemKindText = { link = "@text", },
        CmpItemKindTypeParameter = { link = "@lsp.type.parameter", },
        CmpItemKindUnit = { fg = t.taupe, },
        CmpItemKindValue = { fg = t.taupe, },
        CmpItemKindVariable = { link = "@lsp.type.variable", },

        -- Flash
        FlashBackdrop = { link = "Comment", },
        FlashCurrent = { link = "CurSearch", },
        FlashLabel = { fg = "yellow", },
        FlashMatch = { link = "IncSearch", },

        -- FZF Lua
        FzfLuaBorder = { fg = t.ui_gray, },
        FzfLuaBufLineNr = { fg = t.pink, },
        FzfLuaBufName = { fg = t.sky, },
        FzfLuaTitle = { fg = t.sky, },

        -- GitSigns
        GitSignsAdd = { fg = t.added, }, -- gutter
        GitSignsAddInline = { fg = t.none, bg = t.diff_emph_plus, }, -- word diff when config.word_diff == false
        GitSignsAddLnInline = { fg = t.none, bg = t.diff_emph_plus, }, -- word diff when config.word_diff == true
        GitSignsAddPreview = { fg = t.none, bg = t.diff_plus, }, -- line (not word) diffs in previews
        GitSignsChange = { fg = t.modified, },
        GitSignsChangeInline = { fg = t.none, bg = t.bg_mono3, },
        GitSignsChangeLnInline = { fg = t.none, bg = t.bg_mono3, },
        GitSignsCurrentLineBlame = { fg = t.comment, },
        GitSignsDelete = { fg = t.deleted, },
        GitSignsDeleteInline = { fg = t.none, bg = t.diff_emph_minus, },
        GitSignsDeleteLnInline = { fg = t.none, bg = t.diff_emph_minus, },
        GitSignsDeletePreview = { fg = t.none, bg = t.diff_minus, },

        -- Indent Blankline v2
        IndentBlanklineChar = { fg = t.ui_gray, },
        IndentBlanklineContextChar = { fg = t.taupe, },
        -- Indent Blankline v3
        RainbowRed = { fg = t.purple_alpha, },
        RainbowYellow = { fg = t.lemon_alpha, },
        RainbowBlue = { fg = t.cyan_alpha, },

        -- Leap
        LeapBackdrop = { fg = t.comment, },
        LeapLabelPrimary = { fg = "yellow", bg = t.bg_mono3, nocombine = true, },
        LeapLabelSecondary = { fg = "cyan", bg = t.bg_mono3, nocombine = true, },
        LeapLabelSelected = { fg = "yellow", bg = t.cursor_pink, nocombine = true, },
        LeapMatch = { fg = "yellow", bg = t.search_bg, nocombine = true, },

        -- Nvim LSPconfig
        LspInfoBorder = { fg = t.ui_gray, },

        -- Nvim Notify
        NotifyDEBUGBorder = { fg = t.ui_gray, },
        NotifyDEBUGIcon = { fg = t.info, },
        NotifyDEBUGTitle = { fg = t.info, },
        NotifyERRORBorder = { fg = t.error, },
        NotifyERRORIcon = { fg = t.error, },
        NotifyERRORTitle = { fg = t.error, },
        NotifyINFOBorder = { fg = t.ui_gray, },
        NotifyINFOIcon = { fg = t.info, },
        NotifyINFOTitle = { fg = t.info, },
        NotifyTRACEBorder = { fg = t.ui_gray, },
        NotifyTRACEIcon = { fg = t.info, },
        NotifyTRACETitle = { fg = t.info, },
        NotifyWARNBorder = { fg = t.warning, },
        NotifyWARNIcon = { fg = t.warning, },
        NotifyWARNTitle = { fg = t.warning, },

        -- Rainbow Delimiters
        RainbowDelimiterRed = { fg = t.purple, },
        RainbowDelimiterYellow = { fg = t.lemon, },
        RainbowDelimiterBlue = { fg = t.cyan, },

        -- Telescope, see https://github.com/nvim-telescope/telescope.nvim/blob/master/plugin/telescope.lua
        TelescopeBorder = { fg = t.ui_gray, },
        TelescopeMatching = { fg = t.orange, bold = true, },
        TelescopeSelectionCaret = { fg = t.purple, },
        TelescopeTitle = { fg = t.sky, },

        -- Yanky
        YankyPut = { link = "CurSearch", },
        YankyYanked = { link = "CurSearch", },

        -- -- LspTrouble
        -- LspTroubleText = { fg = , },
        -- LspTroubleCount = { fg = , bg = , },
        -- LspTroubleNormal = { fg = , bg = , },

        -- -- Neogit
        -- NeogitBranch = { fg = , },
        -- NeogitRemote = { fg = , },
        -- NeogitHunkHeader = { fg = , },
        -- NeogitHunkHeaderHighlight = { fg = , bg = , },
        -- NeogitDiffContextHighlight = { bg = , },
        -- NeogitDiffDeleteHighlight = { fg = , style = "reverse", },
        -- NeogitDiffAddHighlight = { fg = , style = "reverse", },

        -- -- NvimTree
        -- NvimTreeRootFolder = { fg = , },
        -- NvimTreeSymlink = { fg = , },
        -- NvimTreeFolderName = { fg = , },
        -- NvimTreeFolderIcon = { fg = , },
        -- NvimTreeEmptyFolderName = { fg = , },
        -- NvimTreeOpenedFolderName = { fg = , },
        -- NvimTreeExecFile = { fg = , },
        -- NvimTreeOpenedFile = { fg = , },
        -- NvimTreeSpecialFile = { fg = , style = bold, },
        -- NvimTreeImageFile = { fg = , },
        -- NvimTreeMarkdownFile = { fg = , },
        -- NvimTreeIndentMarker = { fg = , },
        -- NvimTreeGitDirty = { fg = , }, -- diff mode: Changed line |diff.txt|
        -- NvimTreeGitStaged = { fg = , }, -- diff mode: Changed line |diff.txt|
        -- NvimTreeGitMerge = { fg = , }, -- diff mode: Changed line |diff.txt|
        -- NvimTreeGitRenamed = { fg = , }, -- diff mode: Changed line |diff.txt|
        -- NvimTreeGitNew = { fg = , }, -- diff mode: Added line |diff.txt|
        -- NvimTreeGitDeleted = { fg = , }, -- diff mode: Deleted line |diff.txt|
        -- NvimTreeGitIgnored = { fg = _bright, },
        -- LspDiagnosticsError = { fg = , },
        -- LspDiagnosticsWarning = { fg = , },
        -- LspDiagnosticsInformation = { fg = , },
        -- LspDiagnosticsHint = { fg = , },

        -- -- WhichKey
        -- WhichKey = { fg = , style = bold, },
        -- WhichKeyGroup = { fg = , },
        -- WhichKeyDesc = { fg = , style = italic, },
        -- WhichKeySeperator = { fg = , },
        -- WhichKeyFloating = { bg = , },
        -- WhichKeyFloat = { bg = , },
        -- WhichKeyValue = { fg = , },

        -- -- LspSaga
        -- ColInLineDiagnostic = { link = "Comment", },
        -- DefinitionArrow = { fg = , },
        -- DefinitionBorder = { fg = , bg = , },
        -- DefinitionCount = { fg = , },
        -- DefinitionFile = { fg = , bg = , },
        -- DefinitionIcon = { fg = , },
        -- Definitions = { fg = , bold = true, },
        -- DefinitionSearch = { link = "Search", },
        -- DefinitionsIcon = { fg = , },
        -- DiagnosticError = { fg = , },
        -- DiagnosticHint = { fg = , },
        -- DiagnosticInformation = { fg = , },
        -- DiagnosticLineCol = { fg = , },
        -- DiagnosticMap = { fg = , },
        -- DiagnosticQuickFix = { fg = , bold = true, },
        -- DiagnosticTruncateLine = { fg = , },
        -- DiagnosticWarning = { fg = , },
        -- FinderParam = { fg = , bold = true, },
        -- FinderPreviewSearch = { link = "Search", },
        -- FinderSpinner = { fg = , bold = true, },
        -- FinderSpinnerBorder = { fg = , bg = , },
        -- FinderSpinnerTitle = { link = "Title", },
        -- FinderVirtText = { fg = 15, bg = , },
        -- Implements = { fg = , bold = true, },
        -- ImplementsCount = { fg = , },
        -- ImplementsIcon = { fg = , },
        -- LSOutlinePreviewBorder = { fg = , bg = , },
        -- LspFloatWinBorder = { fg = , bg = , },
        -- LspFloatWinNormal = { fg = , bg = , },
        -- LspSagaAutoPreview = { fg = , },
        -- LspSagaBorderTitle = { link = "Title", },
        -- LspSagaCodeActionBorder = { fg = , bg = , },
        -- LspSagaCodeActionContent = { fg = , },
        -- LspSagaCodeActionTitle = { link = "Title", },
        -- LspSagaCodeActionTrunCateLine = { link = "LspSagaCodeActionBorder", },
        -- LspSagaDefPreviewBorder = { fg = , bg = , },
        -- LspSagaDiagnosticBorder = { fg = , bg = , },
        -- LspSagaDiagnosticError = { link = "DiagnosticError", },
        -- LspSagaDiagnosticHeader = { fg = , },
        -- LspSagaDiagnosticHint = { link = "DiagnosticHint", },
        -- LspSagaDiagnosticInfo = { link = "DiagnosticInfo", },
        -- LspSagaDiagnosticSource = { link = "Comment", },
        -- LspSagaDiagnosticTruncateLine = { link = "LspSagaDiagnosticBorder", },
        -- LspSagaDiagnosticWarn = { link = "DiagnosticWarn", },
        -- LspSagaErrorTrunCateLine = { link = "DiagnosticError", },
        -- LspSagaFinderSelection = { fg = , bg = , },
        -- LspSagaHintTrunCateLine = { link = "DiagnosticHint", },
        -- LspSagaHoverBorder = { fg = , bg = , },
        -- LspSagaHoverTrunCateLine = { link = "LspSagaHoverBorder", },
        -- LspSagaInfoTrunCateLine = { link = "DiagnosticInfo", },
        -- LspSagaLightBulb = { link = "DiagnosticSignHint", },
        -- LspSagaLspFinderBorder = { fg = , bg = , },
        -- LspSagaRenameBorder = { fg = , bg = , },
        -- LspSagaRenameMatch = { fg = , bg = , },
        -- LspSagaShTrunCateLine = { link = "LspSagaSignatureHelpBorder", },
        -- LspSagaSignatureHelpBorder = { fg = , bg = , },
        -- LspSagaWarnTrunCateLine = { link = "DiagnosticWarn", },
        -- OutlineDetail = { fg = , },
        -- OutlineFoldPrefix = { fg = , },
        -- OutlineIndentEvn = { fg = , },
        -- OutlineIndentOdd = { fg = , },
        -- References = { fg = , bold = true, },
        -- ReferencesCount = { fg = , },
        -- ReferencesIcon = { fg = , },
        -- SagaShadow = { fg = "black", },
        -- TargetFileName = { fg = , },
        -- TargetWord = { fg = , bold = true, },
    }
end

return theme
