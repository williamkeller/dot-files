"
" Settings relating to the user interface
"


" Colors
colorscheme harlequin
set background=dark
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray


" Turn of fugly scrollbars in MacVim
set guioptions=


" Turn the background transparent, just for fun
let t:is_transparent = 1
function! Toggle_transparent_background()
  if t:is_transparent == 0
    hi Normal guibg=#111111 ctermbg=black
    hi EndOfBuffer term=bold ctermfg=242 ctermbg=234 gui=bold guifg=Blue
    let t:is_transparent = 1
  else
    hi Normal guibg=NONE ctermbg=NONE
    hi EndOfBuffer guibg=NONE ctermbg=NONE
    let t:is_transparent = 0
  endif
endfunction
:call Toggle_transparent_background()


" Cursor line
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=Grey ctermbg=0


" Status line
let g:lightline = {
\ 'colorscheme': 'wombat',
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
\ },
\ 'component_function': {
\   'gitbranch': 'FugitiveHead'
\ },
\ }
set laststatus=2
