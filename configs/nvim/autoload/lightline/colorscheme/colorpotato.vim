" =============================================================================
" Filename: autoload/lightline/colorscheme/16color.vim
" Author: itchyny, jackno
" License: MIT License
" =============================================================================

let s:black = [ '#022222', 0 ]
let s:maroon = [ '#aa0000', 1 ]
let s:green = [ '#5A9A00', 2 ]
let s:olive = [ '#A68904', 3 ]
let s:navy = [ '#185AD6', 4 ]
let s:purple = [ '#9010cc', 5 ]
let s:teal = [ '#107371', 6 ]
let s:silver = [ '#b0b0b0', 7 ]
let s:gray = [ '#033333', 8]
let s:red = [ '#dd0000', 9 ]
let s:lime = [ '#79CF00', 10 ]
let s:yellow = [ '#e6a909', 11 ]
let s:blue = [ '#387AE6', 12 ]
let s:fuchsia = [ '#b319ff', 13 ]
let s:aqua = [ '#29C5C5', 14 ]
let s:white = [ '#d0d0d0', 15 ]

if lightline#colorscheme#background() ==# 'light'
  let [s:black, s:white] = [s:white, s:black]
  let [s:silver, s:gray] = [s:gray, s:silver]
  let [s:blue, s:aqua] = [s:aqua, s:blue]
  let [s:purple, s:fuchsia] = [s:fuchsia, s:purple]
  let [s:green, s:lime] = [s:lime, s:green]
  let [s:red, s:yellow] = [s:yellow, s:red]
endif

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:black, s:blue ], [ s:white, s:gray ] ]
let s:p.normal.middle = [ [ s:silver, s:black ] ]
let s:p.normal.right = [ [ s:black, s:blue ], [ s:white, s:gray ] ]
let s:p.normal.error = [ [ s:black, s:red ] ]
let s:p.normal.warning = [ [ s:black, s:yellow ] ]
let s:p.inactive.left =  [ [ s:silver, s:gray ], [ s:gray, s:black ] ]
let s:p.inactive.middle = [ [ s:silver, s:black ] ]
let s:p.inactive.right = [ [ s:silver, s:gray ], [ s:gray, s:black ] ]
let s:p.insert.left = [ [ s:black, s:green ], [ s:white, s:gray ] ]
let s:p.insert.right = copy(s:p.insert.left)
let s:p.replace.left = [ [ s:black, s:red ], [ s:white, s:gray ] ]
let s:p.replace.right = copy(s:p.replace.left)
let s:p.visual.left = [ [ s:white, s:purple ], [ s:white, s:gray ] ]
let s:p.visual.right = copy(s:p.visual.left)
let s:p.tabline.left = [ [ s:silver, s:black ] ]
let s:p.tabline.tabsel = copy(s:p.normal.right)
let s:p.tabline.middle = [ [ s:silver, s:black ] ]
let s:p.tabline.right = copy(s:p.normal.right)

let g:lightline#colorscheme#colorpotato#palette = lightline#colorscheme#flatten(s:p)
