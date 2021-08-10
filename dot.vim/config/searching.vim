"
" Configuration related to searching for things
"

" Basic searching flags
set ignorecase
set smartcase
set hlsearch
set incsearch

" Clear the incremental search highlighting
map <silent> <leader><cr> :noh<cr>


" Super powered fuzzy finding 
set rtp+=/usr/local/opt/fzf
nmap ; :Buffers<CR>
nmap <Leader>f :Files<CR>


" Use ag instead of ack (much faster)
let g:ackprg = 'ag --vimgrep'


" nerdtree - more browsing than searching
map <leader>d :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '^__pycache__$']


" Rebuild tags library
map <leader>t :!ctags -R <CR><CR>
