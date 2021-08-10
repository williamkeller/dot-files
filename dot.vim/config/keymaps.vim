"
" General keymapping
"

" Basic key flags
set expandtab                  " Convert tabs to spaces
set shiftwidth=2
set tabstop=2
set smarttab
set textwidth=90               " Autowrap at 90 columns
set autoindent
set smartindent
set backspace=eol,start,indent " Make backspace smarter


" Remap some the leader key to something closer 
let mapleader = ","
let g:mapleader = ","


" Unmap the arrow keys; real men use motion keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


" Buffer explorer
map <leader>bb :BufExplorer<cr>


" Remap keys for moving around
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" Buffer management
map <leader>bd :Bclose<cr>    " Close the current buffer
map <leader>ba :1,300 bd!<cr> " Close all the buffers


" Move blocks of text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv


" Extend the matching key % to more kinds of blocks
runtime macros/matchit.vim
