" Copyright (c) 2020 Ling CHU <meetchuling@gmail.com>
" Copyright (c) 2020 Luke Inglis <ld.inglis@gmail.com>
"
" Permission to use, copy, modify, and distribute this software for any
" purpose with or without fee is hereby granted, provided that the above
" copyright notice and this permission notice appear in all copies.
"
" THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
" WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
" MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
" ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
" WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
" ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
" OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

let s:colors = {}

let s:colors.black = '#303134'
let s:colors.red = '#E15A60'
let s:colors.green = '#aebda1'
let s:colors.blue = '#678CB1'
let s:colors.magenta = '#a080be'
let s:colors.white = '#f8f7f7'
let s:colors.gray = '#5D6971'

let s:colors.cursor_guide = s:colors.gray

let s:colors.split = s:colors.gray

let s:colors.win_bg = s:colors.gray
let s:colors.win_fg = s:colors.white
let s:colors.selected_bg = s:colors.blue

let s:colors.sneak_bg = s:colors.magenta
let s:colors.selection_bg = s:colors.magenta

let s:colors.none = 'NONE'
let s:colors.underline = 'underline'
let s:colors.bold = 'bold'
let s:colors.italic = 'italic'

function! liminal#get_colors(bg) abort
  if a:bg ==? 'dark'
    let s:colors.foreground = s:colors.white
    let s:colors.background = s:colors.black

    let s:colors.cyan = '#3cc4dd'
    let s:colors.yellow = '#fcb650'
  elseif a:bg ==? 'light'
    let s:colors.foreground = s:colors.black
    let s:colors.background = s:colors.white

    let s:colors.cyan = '#00a8c6'
    let s:colors.yellow = '#ec9513'
  endif

  let s:colors.selection_fg = s:colors.background
  let s:colors.cursor_bg = s:colors.foreground
  let s:colors.cursor_fg = s:colors.background

  return s:colors
endfunction
