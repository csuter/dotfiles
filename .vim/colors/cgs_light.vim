" Vim color file

" This is the default color scheme with some additions.

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "cgs_light"

" functions {{{
" returns an approximate grey index for the given grey level
fun! <SID>grey_number(x)
  if a:x < 14
    return 0
  else
    let l:n = (a:x - 8) / 10
    let l:m = (a:x - 8) % 10
    if l:m < 5
      return l:n
    else
      return l:n + 1
    endif
  endif
endfun

" returns the actual grey level represented by the grey index
fun! <SID>grey_level(n)
  if a:n == 0
    return 0
  else
    return 8 + (a:n * 10)
  endif
endfun

" returns the palette index for the given grey index
fun! <SID>grey_color(n)
  if a:n == 0
    return 16
  elseif a:n == 25
    return 231
  else
    return 231 + a:n
  endif
endfun

" returns an approximate color index for the given color level
fun! <SID>rgb_number(x)
  if a:x < 75
    return 0
  else
    let l:n = (a:x - 55) / 40
    let l:m = (a:x - 55) % 40
    if l:m < 20
      return l:n
    else
      return l:n + 1"{{{
    endif"}}}
  endif
endfun

" returns the actual color level for the given color index
fun! <SID>rgb_level(n)
  if a:n == 0
    return 0
  else
    return 55 + (a:n * 40)
  endif
endfun

" returns the palette index for the given R/G/B color indices
fun! <SID>rgb_color(x, y, z)
  return 16 + (a:x * 36) + (a:y * 6) + a:z
endfun

" returns the palette index to approximate the given R/G/B color levels
fun! <SID>color(r, g, b)
  " get the closest grey
  let l:gx = <SID>grey_number(a:r)
  let l:gy = <SID>grey_number(a:g)
  let l:gz = <SID>grey_number(a:b)

  " get the closest color
  let l:x = <SID>rgb_number(a:r)
  let l:y = <SID>rgb_number(a:g)
  let l:z = <SID>rgb_number(a:b)

  if l:gx == l:gy && l:gy == l:gz
    " there are two possibilities
    let l:dgr = <SID>grey_level(l:gx) - a:r
    let l:dgg = <SID>grey_level(l:gy) - a:g
    let l:dgb = <SID>grey_level(l:gz) - a:b
    let l:dgrey = (l:dgr * l:dgr) + (l:dgg * l:dgg) + (l:dgb * l:dgb)
    let l:dr = <SID>rgb_level(l:gx) - a:r
    let l:dg = <SID>rgb_level(l:gy) - a:g
    let l:db = <SID>rgb_level(l:gz) - a:b
    let l:drgb = (l:dr * l:dr) + (l:dg * l:dg) + (l:db * l:db)
    if l:dgrey < l:drgb
      " use the grey
      return <SID>grey_color(l:gx)
    else
      " use the color
      return <SID>rgb_color(l:x, l:y, l:z)
    endif
  else
    " only one possibility
    return <SID>rgb_color(l:x, l:y, l:z)
  endif
endfun

" returns the palette index to approximate the 'rrggbb' hex string
fun! <SID>rgb(rgb)
  let l:r = ("0x" . strpart(a:rgb, 0, 2)) + 0
  let l:g = ("0x" . strpart(a:rgb, 2, 2)) + 0
  let l:b = ("0x" . strpart(a:rgb, 4, 2)) + 0

  return <SID>color(l:r, l:g, l:b)
endfun

" sets the highlighting for the given group
fun! <SID>X(group, fg, bg, attr)
  if a:fg != ""
    exec "hi " . a:group . " guifg=#" . a:fg . " ctermfg=" . <SID>rgb(a:fg)
  endif
  if a:bg != ""
    exec "hi " . a:group . " guibg=#" . a:bg . " ctermbg=" . <SID>rgb(a:bg)
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun
" }}}

let white = "ffffff"
let black = "000000"
let progblue  = "2288ff"

" vim: sw=2
call <SID>X("DiffAdd",  white, "00aa00", "")
call <SID>X("DiffChange", black, white, "")
call <SID>X("DiffText",   black, "ffff00", "")
call <SID>X("DiffDelete", "aa0000", "aa0000", "")
