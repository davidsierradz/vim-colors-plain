" Name:       plain.vim
" Version:    0.1
" Maintainer: github.com/andreypopp
" License:    The MIT License (MIT)
"
" Based on
"
"   https://github.com/pbrisbin/vim-colors-off (MIT License)
"
" which in turn based on
"
"   https://github.com/reedes/vim-colors-pencil (MIT License)
"
"""
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='plain'

let s:black            = { "gui": "#282828", "cterm": "0"   }
let s:medium_gray      = { "gui": "#767676", "cterm": "243" }
let s:white            = { "gui": "#fbf1c7", "cterm": "229" }
let s:light_black      = { "gui": "#424242", "cterm": "8"   }
let s:lighter_black    = { "gui": "#545454", "cterm": "240" }
let s:subtle_black     = { "gui": "#303030", "cterm": "236" }
let s:light_gray       = { "gui": "#999999", "cterm": "249" }
let s:lighter_gray     = { "gui": "#CCCCCC", "cterm": "251" }
let s:lightest_gray    = { "gui": "#E5E5E5", "cterm": "251" }
let s:dark_red         = { "gui": "#C30771", "cterm": "1"   }
let s:light_red        = { "gui": "#E32791", "cterm": "1"   }
let s:dark_blue        = { "gui": "#008EC4", "cterm": "4"   }
let s:light_blue       = { "gui": "#B6D6FD", "cterm": "153" }
let s:dark_cyan        = { "gui": "#20A5BA", "cterm": "6"   }
let s:light_cyan       = { "gui": "#4FB8CC", "cterm": "14"  }
let s:dark_green       = { "gui": "#10A778", "cterm": "2"   }
let s:light_green      = { "gui": "#5FD7A7", "cterm": "10"  }
let s:dark_purple      = { "gui": "#523C79", "cterm": "5"   }
let s:light_purple     = { "gui": "#6855DE", "cterm": "13"  }
let s:light_yellow     = { "gui": "#F3E430", "cterm": "11"  }
let s:dark_yellow      = { "gui": "#A89C14", "cterm": "3"   }
let s:sol_base2        = { "gui": "#eee8d5", "cterm": "15"  }
let s:sol_base02       = { "gui": "#32302f", "cterm": "0"   }

let s:gb_faded_green   = { "gui": "#79740e", "cterm": "100" }
let s:gb_faded_aqua    = { "gui": "#427b58", "cterm": "65"  }
let s:gb_faded_red     = { "gui": "#9d0006", "cterm": "88"  }
let s:gb_faded_yellow  = { "gui": "#b57614", "cterm": "136" }
let s:gb_faded_orange  = { "gui": "#af3a03", "cterm": "130" }
let s:gb_faded_blue    = { "gui": "#076678", "cterm": "24"  }

let s:gb_bright_green  = { "gui": "#b8bb26", "cterm": "142" }
let s:gb_bright_aqua   = { "gui": "#8ec07c", "cterm": "108" }
let s:gb_bright_red    = { "gui": "#fb4934", "cterm": "167" }
let s:gb_bright_yellow = { "gui": "#fabd2f", "cterm": "214" }
let s:gb_bright_orange = { "gui": "#fe8019", "cterm": "208" }
let s:gb_bright_blue   = { "gui": "#83a598", "cterm": "109" }

if has('nvim')
  if &background == "dark"
    " dark0 + gray
    let g:terminal_color_0 = s:black
    let g:terminal_color_8 = s:white

    " neurtral_red + bright_red
    let g:terminal_color_1 = "#cc241d"
    let g:terminal_color_9 = "#fb4934"

    " neutral_green + bright_green
    let g:terminal_color_2 = "#98971a"
    let g:terminal_color_10 = "#b8bb26"

    " neutral_yellow + bright_yellow
    let g:terminal_color_3 = "#d79921"
    let g:terminal_color_11 = "#fabd2d"

    " neutral_blue + bright_blue
    let g:terminal_color_4 = "#458588"
    let g:terminal_color_12 = "#83a598"

    " neutral_purple + bright_purple
    let g:terminal_color_5 = "#b16286"
    let g:terminal_color_13 = "#d3869b"

    " neutral_aqua + faded_aqua
    let g:terminal_color_6 = "#689d6a"
    let g:terminal_color_14 = "#8ec07c"

    " light4 + light1
    let g:terminal_color_7 = "#a89984"
    let g:terminal_color_15 = "#928374"
  else
    " dark0 + gray
    let g:terminal_color_0 = s:white
    let g:terminal_color_8 = s:black

    " neurtral_red + bright_red
    let g:terminal_color_1 = "#cc241d"
    let g:terminal_color_9 = "#9d0006"

    " neutral_green + bright_green
    let g:terminal_color_2 = "#98971a"
    let g:terminal_color_10 = "#79740e"

    " neutral_yellow + bright_yellow
    let g:terminal_color_3 = "#d79921"
    let g:terminal_color_11 = "#b57614"

    " neutral_blue + bright_blue
    let g:terminal_color_4 = "#458588"
    let g:terminal_color_12 = "#076678"

    " neutral_purple + bright_purple
    let g:terminal_color_5 = "#b16286"
    let g:terminal_color_13 = "#8f3f71"

    " neutral_aqua + faded_aqua
    let g:terminal_color_6 = "#689d6a"
    let g:terminal_color_14 = "#427b58"

    " light4 + light1
    let g:terminal_color_7 = "#7c6f64"
    let g:terminal_color_15 = "#928374"
  endif
endif

if &background == "dark"
  let s:bg               = s:black
  let s:bg_subtle        = s:light_black
  let s:bg_very_subtle   = s:subtle_black
  let s:norm             = s:lighter_gray
  let s:norm_subtle      = s:light_gray
  let s:norm_very_subtle = s:medium_gray
  let s:purple           = s:light_purple
  let s:cyan             = s:light_cyan
  let s:green            = s:light_green
  let s:red              = s:light_red
  let s:yellow           = s:light_yellow
  let s:visual           = s:lighter_black
  let s:cursor_line      = s:subtle_black
  let s:constant         = s:light_blue
  let s:comment          = s:light_black
  let s:selection        = s:dark_yellow
  let s:selection_fg     = s:black
  let s:ok               = s:light_green
  let s:warning          = s:yellow
  let s:error            = s:light_red
  let s:statusline_bg    = s:sol_base02
  let s:gb_green         = s:gb_bright_green
  let s:gb_aqua          = s:gb_bright_aqua
  let s:gb_red           = s:gb_bright_red
  let s:gb_yellow        = s:gb_bright_yellow
  let s:gb_orange        = s:gb_bright_orange
  let s:gb_blue          = s:gb_bright_blue
else
  let s:bg               = s:white
  let s:bg_subtle        = s:lighter_gray
  let s:bg_very_subtle   = s:light_gray
  let s:norm             = s:light_black
  let s:norm_subtle      = s:lighter_black
  let s:norm_very_subtle = s:medium_gray
  let s:purple           = s:dark_purple
  let s:cyan             = s:dark_cyan
  let s:green            = s:dark_green
  let s:red              = s:dark_red
  let s:yellow           = s:dark_yellow
  let s:visual           = s:light_blue
  let s:cursor_line      = s:lightest_gray
  let s:constant         = s:dark_blue
  let s:comment          = s:lighter_gray
  let s:selection        = s:light_yellow
  let s:selection_fg     = s:light_black
  let s:ok               = s:light_green
  let s:warning          = s:yellow
  let s:error            = s:dark_red
  let s:statusline_bg    = s:sol_base2
  let s:gb_green         = s:gb_faded_green
  let s:gb_aqua          = s:gb_faded_aqua
  let s:gb_red           = s:gb_faded_red
  let s:gb_yellow        = s:gb_faded_yellow
  let s:gb_orange        = s:gb_faded_orange
  let s:gb_blue          = s:gb_faded_blue
endif

unlet s:black
unlet s:medium_gray
unlet s:white
unlet s:light_black
unlet s:lighter_black
unlet s:subtle_black
unlet s:light_gray
unlet s:lighter_gray
unlet s:lightest_gray
unlet s:dark_red
unlet s:light_red
unlet s:dark_blue
unlet s:light_blue
unlet s:dark_cyan
unlet s:light_cyan
unlet s:dark_green
unlet s:light_green
unlet s:dark_purple
unlet s:light_purple
unlet s:light_yellow
unlet s:dark_yellow
unlet s:sol_base2
unlet s:sol_base02

" https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

" __Normal__
if has("gui")
    call s:h("Normal",    {"fg": s:norm, "bg": s:bg})
    call s:h("Cursor",    {"fg": s:bg, "bg": s:norm})
else
    call s:h("Normal",    {"fg": s:norm, "bg": s:bg})
    hi! link Cursor       Identifier
endif
hi! link Identifier       Normal
hi! link Function         Identifier
hi! link Type             Normal
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type
" hi! link Special          Normal
" hi! link SpecialChar      Special
" hi! link Tag              Special
" hi! link Delimiter        Special
" hi! link SpecialComment   Special
" hi! link Debug            Special
hi! link VertSplit        Normal
" hi! link PreProc          Normal
" hi! link Define           PreProc
" hi! link Macro            PreProc
" hi! link PreCondit        PreProc

" " __Operator__
" call s:h("Noise",         {"fg": s:norm_subtle, "gui": "NONE"})
" hi! link Operator         Noise
" hi! link LineNr           Noise
" hi! link CursorLineNr     LineNr
" hi! link FoldColumn       LineNr
" hi! link SignColumn       LineNr

" " __Comment__
call s:h("Comment",       {"fg": s:comment, "gui": "italic"})

" " __Constant__
" call s:h("Constant",      {"fg": s:constant})
" hi! link Character        Constant
" hi! link Number           Constant
" hi! link Boolean          Constant
" hi! link Float            Constant
" hi! link String           Constant
" hi! link Directory        Constant
" hi! link Title            Constant

" " __Statement__
call s:h("Statement",     {"fg": s:norm})
" hi! link Include          Statement
" hi! link Conditonal       Statement
" hi! link Repeat           Statement
" hi! link Label            Statement
" hi! link Keyword          Statement
" hi! link Exception        Statement

" " __ErrorMsg__
" call s:h("ErrorMsg",      {"fg": s:error})
" hi! link Error            ErrorMsg
" hi! link Question         ErrorMsg
" " __WarningMsg__
" call s:h("WarningMsg",    {"fg": s:warning})
" " __MoreMsg__
" call s:h("MoreMsg",       {"fg": s:norm_subtle, "cterm": "bold", "gui": "bold"})
" hi! link ModeMsg          MoreMsg

" " __NonText__
" call s:h("NonText",       {"fg": s:norm_very_subtle})
" hi! link Folded           NonText
" hi! link qfLineNr         NonText

" __Search__
call s:h("Search",        {"bg": s:selection, "fg": s:selection_fg})
call s:h("IncSearch",     {"bg": s:selection, "fg": s:selection_fg, "gui": "bold"})

" __Visual__
call s:h("Visual",        {"bg": s:visual, "fg": s:selection_fg})
" __VisualNOS__
call s:h("VisualNOS",     {"bg": s:bg_subtle})

" call s:h("Ignore",        {"fg": s:bg})

" __DiffAdd__
call s:h("DiffAdd",       {"fg": s:gb_green})
" __DiffDelete__
call s:h("DiffDelete",    {"fg": s:gb_red})
" __DiffChange__
call s:h("DiffChange",    {"fg": s:gb_green})
" __DiffText__
call s:h("DiffText",      {"fg": s:gb_yellow, "gui": "bold"})

call s:h("diffAdded",     {"fg": s:gb_green})
call s:h("diffRemoved",   {"fg": s:gb_red})
call s:h("diffChanged",   {"fg": s:gb_aqua})
call s:h("diffFile",      {"fg": s:gb_orange})
call s:h("diffNewFile",   {"fg": s:gb_yellow})
call s:h("diffLine",      {"fg": s:gb_blue})

" if has("gui_running")
"   call s:h("SpellBad",    {"gui": "underline", "sp": s:red})
"   call s:h("SpellCap",    {"gui": "underline", "sp": s:ok})
"   call s:h("SpellRare",   {"gui": "underline", "sp": s:error})
"   call s:h("SpellLocal",  {"gui": "underline", "sp": s:ok})
" else
"   call s:h("SpellBad",    {"cterm": "underline", "fg": s:red})
"   call s:h("SpellCap",    {"cterm": "underline", "fg": s:ok})
"   call s:h("SpellRare",   {"cterm": "underline", "fg": s:error})
"   call s:h("SpellLocal",  {"cterm": "underline", "fg": s:ok})
" endif

" hi! link helpHyperTextEntry Title
" hi! link helpHyperTextJump  String

" __StatusLine__
call s:h("StatusLine",        {"bg": s:statusline_bg, "fg": s:norm_very_subtle})
" __StatusLineNC__
call s:h("StatusLineNC",      {"bg": s:bg, "fg": s:bg_subtle})
" __WildMenu__
call s:h("WildMenu",          {"gui": "underline,bold", "bg": s:bg, "fg": s:norm})

call s:h("StatusLineOk",      {"gui": "underline", "bg": s:bg, "fg": s:ok})
call s:h("StatusLineError",   {"gui": "underline", "bg": s:bg, "fg": s:error})
call s:h("StatusLineWarning", {"gui": "underline", "bg": s:bg, "fg": s:warning})

" __Pmenu__
call s:h("Pmenu",         {"fg": s:norm, "bg": s:cursor_line})
hi! link PmenuSbar        Pmenu
hi! link PmenuThumb       Pmenu
" __PmenuSel__
call s:h("PmenuSel",      {"fg": s:norm, "bg": s:visual, "gui": "bold"})

" hi! link TabLine          Normal
" hi! link TabLineSel       Keyword
" hi! link TabLineFill      Normal

" " __CursorLine__
" call s:h("CursorLine",    {"bg": s:cursor_line})
" " __CursorColumn__
" call s:h("ColorColumn",   {"bg": s:cursor_line})

" " __MatchParen__
" call s:h("MatchParen",    {"bg": s:bg_subtle, "fg": s:norm})

" hi! link htmlH1 Normal
" hi! link htmlH2 Normal
" hi! link htmlH3 Normal
" hi! link htmlH4 Normal
" hi! link htmlH5 Normal
" hi! link htmlH6 Normal

" hi link diffRemoved       DiffDelete
" hi link diffAdded         DiffAdd

" hi link jsFlowTypeKeyword Statement
" hi link jsFlowImportType Statement
" hi link jsFunction Statement
" " hi link jsGlobalObjects Normal
" " hi link jsGlobalNodeObjects Normal
" hi link jsArrowFunction Noise
" hi link StorageClass Statement

" hi link xmlTag Constant
" hi link xmlTagName xmlTag
" hi link xmlEndTag xmlTag
" hi link xmlAttrib xmlTag

" hi link markdownH1 Statement
" hi link markdownH2 Statement
" hi link markdownH3 Statement
" hi link markdownH4 Statement
" hi link markdownH5 Statement
" hi link markdownH6 Statement
" hi link markdownListMarker Constant
" hi link markdownCode Constant
" hi link markdownCodeBlock Constant
" hi link markdownCodeDelimiter Constant
" hi link markdownHeadingDelimiter Constant

" hi link yamlBlockMappingKey Statement
" hi link pythonOperator Statement

hi! link jsxCloseString Normal



hi! String     guifg=#008EC4 guibg=NONE
hi! link jsBooleanTrue String
hi! link jsBooleanFalse String
hi! link jsNumber String
hi! link jsFloat String
hi! link jsNull String
hi! link jsUndefined String
hi! link Constant   Normal
hi! link Identifier Normal
hi! link Function   Normal
hi! link Statement  Normal
hi! link PreProc    Normal
hi! link Special    Normal
hi! link Delimiter  Normal
