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
let s:colors.selected_bg = s:colors.blue

let s:colors.sneak_bg = s:colors.magenta
let s:colors.selection_bg = s:colors.magenta

let s:colors.none = 'NONE'
let s:colors.underline = 'underline'
let s:colors.bold = 'bold'
let s:colors.italic = 'italic'

function! limin#get_colors(bg) abort
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
