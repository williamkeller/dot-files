"
" Config related to tools for finding things 
"

" TODO - check to see if the fzf binary is here, before assigning it.
" On the M1 laptop, it's in a different location. Throw a helpful message if
" the binary can't be found at all, which is likely the case on a new install.
set rtp+=/usr/local/opt/fzf
nmap ; :Buffers<CR>
nmap <Leader>f :Files<CR>


" ack
" Might be a good idea to do a check to see if ag is present on the system, and if not
" fall back to ack. It's actually a problem when I pull this down on to a new machine
" where ag isn't installed.
let g:ackprg = 'ag --vimgrep'  " ag is much faster than ack
