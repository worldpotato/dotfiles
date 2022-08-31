
" vim-airline 'airpotato' theme
" it is using current terminal colorscheme
" and in gvim i left colors from 'wombat' theme but i am not using it anyway

" Normal mode
"          [ guifg, guibg, ctermfg, ctermbg, opts ]
let s:N1 = [ '#141413' , '#CAE682' , 0 , 6 ] " mode
let s:N2 = [ '#CAE682' , '#32322F' , 14 , 8 ]   " info
let s:N3 = [ '#CAE682' , '#242424' , 7 , 0 ] " statusline
let s:N4 = [ '#86CD74' , 10, 0 , 14 ]         " mode modified

" Insert mode
let s:I1 = [ '#141413' , '#FDE76E' , 8 , 3 ]   " mode
let s:I2 = [ '#FDE76E' , '#32322F' , 14 , 8 ]   " info
let s:I3 = [ '#FDE76E' , '#242424' , 7 , 0 ] " statusline
let s:I4 = [ '#FADE3E' , 11 , 0 ,  14 ]        " mode modified

" Visual mode
let s:V1 = [ '#141413' , '#B5D3F3' , 8 , 5 ]   " mode
let s:V2 = [ '#B5D3F3' , '#32322F' , 14 , 8 ]   " info
let s:V3 = [ '#B5D3F3' , '#242424' , 7 , 0 ] " statusline
let s:V4 = [ '#7CB0E6' , 12 , 0 , 14 ]        " mode modified

" Replace mode
let s:R1 = [ '#141413' , '#E5786D' , 8 , 1 ]   " mode
let s:R2 = [ '#E5786D' , '#32322F' , 14 , 8 ]   " info
let s:R3 = [ '#E5786D' , '#242424' , 7 , 0 ] " statusline
let s:R4 = [ '#E55345' , 9 , 0 , 14 ]          " mode modified

" Paste mode
let s:PA = [ '#94E42C' , 6 ]

" Info modified
let s:IM = [ '#40403C' , 6 ]

" Inactive mode
let s:IA = [ '#767676' , s:N3[1] , s:N3[2] , s:N3[3] , '' ]

let g:airline#themes#airpotato#palette = {}

let g:airline#themes#airpotato#palette.accents = {
      \ 'red': [ '#E5786D' , '' , 5 , '' , '' ],
      \ }

let g:airline#themes#airpotato#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#airpotato#palette.normal_modified = {
    \ 'airline_a': [ s:N1[0] , s:N4[0] , s:N1[2] , s:N1[3] , ''     ] ,
    \ 'airline_b': [ s:N4[0] , s:IM[0] , s:N2[2] , s:N2[3] , ''     ] ,
    \ 'airline_c': [ s:N4[0] , s:N3[1] , s:N4[2] , s:N4[3] , ''     ] }


let g:airline#themes#airpotato#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#airpotato#palette.insert_modified = {
    \ 'airline_a': [ s:I1[0] , s:I4[0] , s:I1[2] , s:I1[3] , ''     ] ,
    \ 'airline_b': [ s:I4[0] , s:IM[0] , s:I2[2] , s:I2[3] , ''     ] ,
    \ 'airline_c': [ s:I4[0] , s:N3[1] , s:I4[2] , s:I4[3] , ''     ] }

let g:airline#themes#airpotato#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#airpotato#palette.visual_modified = {
    \ 'airline_a': [ s:V1[0] , s:V4[0] , s:V1[2] , s:V1[3] , ''     ] ,
    \ 'airline_b': [ s:V4[0] , s:IM[0] , s:V2[2] , s:V2[3] , ''     ] ,
    \ 'airline_c': [ s:V4[0] , s:N3[1] , s:V4[2] , s:V4[3] , ''     ] }


let g:airline#themes#airpotato#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#airpotato#palette.replace_modified = {
    \ 'airline_a': [ s:R1[0] , s:R4[0] , s:R1[2] , s:R1[3] , ''     ] ,
    \ 'airline_b': [ s:R4[0] , s:IM[0] , s:R2[2] , s:R2[3] , ''     ] ,
    \ 'airline_c': [ s:R4[0] , s:N3[1] , s:R4[2] , s:R4[3] , ''     ] }


let g:airline#themes#airpotato#palette.insert_paste = {
    \ 'airline_a': [ s:I1[0] , s:PA[0] , s:I1[2] , s:PA[1] , ''     ] ,
    \ 'airline_b': [ s:PA[0] , s:IM[0] , s:PA[1] , s:IM[1] , ''     ] ,
    \ 'airline_c': [ s:PA[0] , s:N3[1] , s:PA[1] , s:N3[3] , ''     ] }


let g:airline#themes#airpotato#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#airpotato#palette.inactive_modified = {
    \ 'airline_c': [ s:N4[0] , ''      , s:N4[2] , s:N4[3]      , ''     ] }

