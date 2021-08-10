"
" Configuration of the status line
"

set laststatus=2      " always show the status line
set statusline=       " start on the left side
set statusline+=%m    " modified flag
set statusline+=\ %f  " filename
set statusline+=\ %r  " read-only flag

set statusline+=%=    " switch to right side

"" Syntastic 
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

set statusline+=%y    " current filetype

" git status
set statusline+=\ %{FugitiveStatusline()}\ \|

" line numbers
set statusline+=\ (%l\/\%L)
