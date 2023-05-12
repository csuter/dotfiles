" Vim color file
" Maintainer: Lisie Michel

" Google color scheme

set background=dark

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="googledark"

set guifont=Droid\ Sans\ Mono

" Colors for the User Interface.

hi Cursor	guibg=#eeeeee   guifg=black     gui=bold
hi Normal	guibg=black	guifg=#4285F4	gui=none
hi NonText	guibg=black     guifg=#eeeeee   gui=bold
hi Visual	guibg=#656565   guifg=NONE	gui=none
" hi VisualNOS

hi Linenr	guibg=#656565	guifg=#eeeeee   gui=none
hi ColorColumn  guibg=#656565   guifg=NONE      gui=none

hi Directory	guibg=bg	guifg=#0F9D58   gui=none

hi IncSearch	guibg=#eeeeee	guifg=black	gui=none
hi Search	guibg=#eeeeee	guifg=black	gui=none
hi SpecialKey	guibg=bg	guifg=fg    	gui=none
hi Titled	guibg=bg	guifg=fg	gui=none

hi ErrorMsg	    guibg=bg	guifg=#DB4437   gui=bold
hi ModeMsg	    guibg=bg	guifg=#4285F4   gui=none
hi link	MoreMsg	    ModeMsg
hi link Question    ModeMsg
hi WarningMsg	    guibg=bg	guifg=#DB4437   gui=bold

hi StatusLine	guibg=#eeeeee	guifg=#656565	gui=bold
hi StatusLineNC	guibg=#656565	guifg=#eeeeee	gui=none
hi VertSplit	guibg=#eeeeee	guifg=#656565	gui=none


" hi Folded
" hi FoldColumn
" hi SignColumn


" Colors for Syntax Highlighting.

hi Comment      guibg=bg    guifg=#0F9D58 gui=none

hi Constant	guibg=bg    guifg=#eeeeee gui=none
hi String	guibg=bg    guifg=#DB4427 gui=italic
hi Character	guibg=bg    guifg=#DB4427 gui=italic
hi Number	guibg=bg    guifg=#eeeeee gui=none
hi Boolean	guibg=bg    guifg=#eeeeee gui=none
hi Float	guibg=bg    guifg=#eeeeee gui=none

hi Identifier	guibg=bg    guifg=#003399 gui=none
hi Function	guibg=bg    guifg=#4285F4 gui=bold
hi Statement	guibg=bg    guifg=#DB4437 gui=bold

hi Conditional	guibg=bg    guifg=#DB4437 gui=bold
hi Repeat	guibg=bg    guifg=#DB4437 gui=bold
hi link	Label	Conditional
hi Operator	guibg=bg    guifg=#eeeeee gui=bold
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
hi Tag		    guibg=bg	    guifg=#eeeeee   gui=bold
hi link Delimiter   Special
hi SpecialComment   guibg=bg        guifg=#0F9D58   gui=bold
hi link Debug	    Special

hi Underlined guibg=bg guifg=#eeeeee gui=underline

hi Title    guibg=bg	  guifg=fg    	gui=bold
hi Ignore   guibg=bg	  guifg=#eeeeee	gui=none
hi Error    guibg=#DB4437 guifg=black	gui=none
hi Todo	    guibg=#F4B400 guifg=black   gui=none
