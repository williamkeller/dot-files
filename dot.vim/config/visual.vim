"
" Configuration relating to how vim looks
"

" Use the full color range
set termguicolors

" Basic theme
colorscheme harlequin
set background=dark
set colorcolumn=90

highlight CursorLine guibg=#202030
highlight CursorLineNC guibg=NONE
highlight ColorColumn guibg=NONE guifg=Red cterm=bold
highlight SignColumn guibg=NONE

highlight Visual guibg=DarkBlue

highlight Pmenu guibg=DarkBlue
highlight Folded guibg=NONE

highlight LineNr guifg=Cyan
highlight CursorLineNr guibg=#202030 guifg=Cyan cterm=Bold

highlight NERDTreeExecFile cterm=NONE guifg=Magenta guibg=NONE

highlight StatusLine guibg=darkblue cterm=bold
highlight StatusLineNC guibg=#202030 cterm=NONE


" Cursor line - only show the cursor line in the active window
set cursorline
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine cterm=bold guibg=#202030

" Turn of fugly scrollbars in MacVim
set guioptions=
