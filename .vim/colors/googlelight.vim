" Vim color file
" Maintainer: Lisie Michel

" Google color scheme

set background=light

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="googlelight"

set guifont=Droid\ Sans\ Mono

" Colors for the User Interface.

hi Cursor	guibg=#656565   guifg=white     gui=bold
hi Normal	guibg=white	guifg=#4285F4	gui=none
hi NonText	guibg=white     guifg=#656565   gui=bold
hi Visual	guibg=#EEEEEE   guifg=NONE	gui=none
" hi VisualNOS

hi Linenr	guibg=#EEEEEE	guifg=#656565   gui=none
hi ColorColumn  guibg=#EEEEEE   guifg=NONE      gui=none

hi Directory	guibg=bg	guifg=#0F9D58   gui=none

hi IncSearch	guibg=#656565	guifg=white	gui=none
hi Search	guibg=#656565	guifg=white	gui=none
hi SpecialKey	guibg=bg	guifg=fg    	gui=none
hi Titled	guibg=bg	guifg=fg	gui=none

hi ErrorMsg	    guibg=bg	guifg=#DB4437   gui=bold
hi ModeMsg	    guibg=bg	guifg=#4285F4   gui=none
hi link	MoreMsg	    ModeMsg
hi link Question    ModeMsg
hi WarningMsg	    guibg=bg	guifg=#DB4437   gui=bold

hi StatusLine	guibg=#656565	guifg=#EEEEEE	gui=bold
hi StatusLineNC	guibg=#EEEEEE	guifg=#656565	gui=none
hi VertSplit	guibg=#656565	guifg=#EEEEEE	gui=none


" hi Folded
" hi FoldColumn
" hi SignColumn


" Colors for Syntax Highlighting.

hi Comment      guibg=bg    guifg=#0F9D58 gui=none

hi Constant	guibg=bg    guifg=#656565 gui=none
hi String	guibg=bg    guifg=#DB4427 gui=italic
hi Character	guibg=bg    guifg=#DB4427 gui=italic
hi Number	guibg=bg    guifg=#656565 gui=none
hi Boolean	guibg=bg    guifg=#656565 gui=none
hi Float	guibg=bg    guifg=#656565 gui=none

hi Identifier	guibg=bg    guifg=#003399 gui=none
hi Function	guibg=bg    guifg=#4285F4 gui=bold
hi Statement	guibg=bg    guifg=#DB4437 gui=bold

hi Conditional	guibg=bg    guifg=#DB4437 gui=bold
hi Repeat	guibg=bg    guifg=#DB4437 gui=bold
hi link	Label	Conditional
hi Operator	guibg=bg    guifg=#656565 gui=bold
hi link Keyword	Statement
hi Exception	guibg=bg    guifg=#DB4437 gui=bold

hi PreProc	    guibg=bg	guifg=#0F9D58 gui=bold
hi Include	    guibg=bg	guifg=#0F9858 gui=bold
hi link Define	    Include
hi link Macro	    Include
hi link PreCondit   Include

hi Type			guibg=bg    guifg=#F4B400 gui=bold
hi link StorageClass	Type
hi link Structure	Type
hi Typedef		guibg=bg    guifg=#0F9D58 gui=italic

hi Special	    guibg=bg	    guifg=fg	    gui=none
hi SpecialChar	    guibg=bg	    guifg=fg	    gui=bold
hi Tag		    guibg=bg	    guifg=#656565   gui=bold
hi link Delimiter   Special
hi SpecialComment   guibg=bg        guifg=#0F9D58   gui=bold
hi link Debug	    Special

hi Underlined guibg=bg guifg=#656565 gui=underline

hi Title    guibg=bg	  guifg=fg    	gui=bold
hi Ignore   guibg=bg	  guifg=#656565	gui=none
hi Error    guibg=#DB4437 guifg=white	gui=none
hi Todo	    guibg=#F4B400 guifg=white   gui=none
