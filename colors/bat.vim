" taken from bat:
let b:outer_space="#263238"    " dark blue (background colour)
let b:spring_wood="#f8f8f0"    " very light yellow
let b:sunshade="#fe8a26"       " orange
let b:malibu="#62d6fd"         " light blue
let b:pear="#a6e22e"           " light green
let b:carnation="#f36464"      " light red
let b:fushia="#F92672"      " fushia
let b:heliotrope="#be84ff"     " light purple

" other (taken from molokai):
let b:tundora="#444444"        " dark gray
let b:mine_shaft="#31363B"     " very dark gray
let b:storm_dust="#60605e"     " yet another shade of gray

" customised:
let b:sirocco="#747e80"        " gray (used for comments)
let b:yellow="#ffff00"         " pure yellow

" set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "bat"

function! s:hi(name, fg, bg, gui)
    execute 'hi' a:name "ctermfg=NONE" "ctermbg=NONE" ("guifg=".a:fg) ("guibg=".a:bg) ("gui=".a:gui)
endfunction

call  s:hi("Cursor",          b:outer_space,  b:spring_wood,  "NONE")
call  s:hi("Visual",          "NONE",         b:tundora,      "NONE")
call  s:hi("CursorLine",      "NONE",         "NONE",         "NONE")
call  s:hi("CursorColumn",    "NONE",         b:mine_shaft,   "NONE")
call  s:hi("ColorColumn",     "NONE",         b:mine_shaft,   "NONE")
call  s:hi("SignColumn",      "NONE",         b:mine_shaft,   "NONE")
call  s:hi("LineNr",          b:sirocco,      b:mine_shaft,   "NONE")
call  s:hi("VertSplit",       b:storm_dust,   b:storm_dust,   "NONE")
call  s:hi("MatchParen",      b:malibu,       "NONE",         "underline")
call  s:hi("StatusLine",      b:spring_wood,  b:storm_dust,   "bold")
call  s:hi("StatusLineNC",    b:spring_wood,  b:storm_dust,   "NONE")
call  s:hi("Pmenu",           b:spring_wood,  b:tundora,      "NONE")
call  s:hi("PmenuSel",        "NONE",         "NONE",         "NONE")
call  s:hi("IncSearch",       b:outer_space,  b:yellow,       "NONE")
call  s:hi("Search",          b:outer_space,  b:yellow,       "NONE")
call  s:hi("Directory",       b:heliotrope,   "NONE",         "NONE")
call  s:hi("Folded",          b:tundora,      "NONE",         "NONE")
call  s:hi("Normal",          b:spring_wood,  "NONE",         "NONE")
call  s:hi("Boolean",         b:heliotrope,   "NONE",         "NONE")
call  s:hi("Character",       b:heliotrope,   "NONE",         "NONE")
call  s:hi("Comment",         b:sirocco,      "NONE",         "NONE")
call  s:hi("Conditional",     b:fushia,       "NONE",         "NONE")
call  s:hi("Constant",        "NONE",         "NONE",         "NONE")
call  s:hi("Define",          b:malibu,       "NONE",         "NONE")
call  s:hi("ErrorMsg",        b:spring_wood,  b:malibu,       "NONE")
call  s:hi("WarningMsg",      b:spring_wood,  b:malibu,       "NONE")
call  s:hi("Float",           b:heliotrope,   "NONE",         "NONE")
call  s:hi("Function",        b:pear,         "NONE",         "NONE")
call  s:hi("Identifier",      b:spring_wood,  "NONE",         "NONE")
call  s:hi("Include",         b:fushia,       "NONE",         "NONE")
call  s:hi("Keyword",         b:malibu,       "NONE",         "NONE")
call  s:hi("Label",           "#e6db74",      "NONE",         "NONE")
call  s:hi("NonText",         b:mine_shaft,   "NONE",         "NONE")
call  s:hi("Number",          b:heliotrope,   "NONE",         "NONE")
call  s:hi("Operator",        b:fushia,       "NONE",         "NONE")
call  s:hi("PreProc",         b:malibu,       "NONE",         "NONE")
call  s:hi("TSProperty",      b:spring_wood,  "NONE",         "NONE")
call  s:hi("Special",         "#af87fc",      "NONE",         "NONE")
call  s:hi("SpecialKey",      b:mine_shaft,   "NONE",         "NONE")
call  s:hi("Statement",       b:malibu,       "NONE",         "NONE")
call  s:hi("StorageClass",    "#66d9ef",      "NONE",         "NONE")
call  s:hi("String",          "#ffd242",      "NONE",         "NONE")
call  s:hi("Tag",             b:malibu,       "NONE",         "NONE")
call  s:hi("Title",           b:spring_wood,  "NONE",         "bold")
call  s:hi("Todo",            b:tundora,      b:pear,         "bold")
call  s:hi("Type",            b:pear,         "NONE",         "NONE")
call  s:hi("Underlined",      "NONE",         "NONE",         "underline")
call  s:hi("DiffAdd",         b:spring_wood,  "#45820c",      "bold")
call  s:hi("DiffDelete",      "#8a0707",      "NONE",         "NONE")
call  s:hi("DiffChange",      b:spring_wood,  "#213655",      "NONE")
call  s:hi("DiffText",        b:spring_wood,  "#204a87",      "bold")

"     CSS / SCSS
call s:hi("cssBraces",       b:spring_wood, "NONE",         "NONE")
call s:hi("cssUnitDecorators", b:fushia,    "NONE",         "NONE")
call s:hi("cssColor",        b:heliotrope,  "NONE",         "NONE")
call s:hi("cssAttrComma",    b:spring_wood, "NONE",         "NONE")
call s:hi("sassClassChar",   b:pear,        "NONE",         "NONE")

"     Go
call  s:hi("goReceiverVar",   b:spring_wood,  "NONE",         "NONE")
call  s:hi("goParamName",     b:spring_wood,  "NONE",         "NONE")
call  s:hi("goReceiverType",  b:malibu,       "NONE",         "NONE")
call  s:hi("goFunctionCall",  b:spring_wood,  "NONE",         "NONE")
call  s:hi("goVarDefs",       b:spring_wood,  "NONE",         "NONE")
call  s:hi("goVarAssign",     b:spring_wood,  "NONE",         "NONE")
call  s:hi("goBuiltins",      b:malibu,       "NONE",         "NONE")

"     Java
call  s:hi("javaStatement",   b:fushia,       "NONE",         "NONE")
call  s:hi("javaConstant",    b:fushia,       "NONE",         "NONE")
call  s:hi("javaScopeDecl",   b:fushia,       "NONE",         "NONE")
call  s:hi("javaTypedef",     b:fushia,       "NONE",         "NONE")
call  s:hi("javaStorageClass", b:fushia,      "NONE",         "NONE")
call  s:hi("javaLabelRegion", b:fushia,       "NONE",         "NONE")

"     XML / HTML
call s:hi("xmlTag",           b:spring_wood, "NONE",         "NONE")
call s:hi("htmlTag",          b:spring_wood, "NONE",         "NONE")
call s:hi("xmlTagName",       b:fushia,      "NONE",         "NONE")
call s:hi("htmlTagName",      b:fushia,      "NONE",         "NONE")
call s:hi("cssTagName",       b:fushia,      "NONE",         "NONE")
call s:hi("xmlEqual",         b:pear,        "NONE",         "NONE")
call s:hi("htmlEqual",        b:pear,        "NONE",         "NONE")
