vim.cmd([[
autocmd BufEnter *.py,*.h,*.cc,*.js nmap ,ll /^.\{81,\}<CR>
autocmd BufEnter *.h,*.cc set matchpairs+=<:>
autocmd BufNew,BufEnter [0-9]\\\{16,17\}.module*.txt setf hlo
autocmd BufRead,BufNewFile BUILD set filetype=python
autocmd BufReadCmd *.whl call zip#Browse(expand("<amatch>"))

autocmd FileType python set formatoptions+=t
autocmd FileType python setlocal indentkeys-=<:>
autocmd FileType python setlocal indentkeys-=:

autocmd BufNew,BufEnter *.tex set tw=80
autocmd BufNew,BufEnter *.go set tabstop=2

"
" , MAPPINGS
"
" vimdiff
nmap ,dt :diffthis<CR>
nmap ,du :diffupdate<CR>
nmap ,do :diffoff<CR>
nmap ,dh :diffthis<CR>h:diffthis<CR>
nmap ,dl :diffthis<CR>l:diffthis<CR>
" vimrc editing
nmap ,rc :split ~/.vimlocal/vimrc<CR>
nmap ,vs :source ~/.config/nvim/init.lua<CR>

nmap ,st :belowright split \| term<CR>

command! W w
command! Wa wa
command! Wqa wqa
command! Q q
command! Qa qa

" handy -- reselect region after indent/unindent
vnoremap > >gv
vnoremap < <gv

" set a mark and put q register in newline at eof
noremap qp mz<C-w>n"qP
" delete last line back into q register and return to mark
noremap qd gg0"qd$dd:bd!<CR>`z

nnoremap <C-w>yy "+yy
nnoremap <C-w>y "+y
vnoremap <C-w>y "+y
nnoremap <C-w>dd "+dd
nnoremap <C-w>d "+d
vnoremap <C-w>d "+d
nnoremap <C-w>p "+p
vnoremap <C-w>p "+p
nnoremap <C-w>P "+P
vnoremap <C-w>P "+P

nnoremap ,m :BufSurfBack<CR>
nnoremap ,. :BufSurfForward<CR>

nnoremap Z ZZ
nmap Q :qa<CR>

" ctrl-/ to get rid of search highlighting
nmap  :<C-u>nohl<CR>

nnoremap <C-j> jzz
nnoremap <C-k> kzz
nnoremap <C-n> nzz

tnoremap <ESC><ESC> <C-\><C-n>

let @n = ".n"
let @j = "j."
let @k = "k."

" Fix annoying python comment unindent
inoremap # X#

nnoremap ,sp :set paste<CR>
nnoremap ,np :set nopaste<CR>

if &diff
  nnoremap <Space> ]c
  nnoremap  [c
endif

let $BASH_ENV = "~/.bash_aliases"
]])
