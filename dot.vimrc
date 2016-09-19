
" No need for backwards vi compatibility
set nocompatible
filetype off
filetype plugin indent on
syntax on


" Remap some keys to make things a little easier on my hands
let mapleader = ","
let g:mapleader = ","
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Unmap the arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Bundles
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'vimwiki/vimwiki'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'pangloss/vim-javascript'
Plugin 'mileszs/ack.vim'
Plugin 'jlanzarotta/bufexplorer'

call vundle#end()

"
" Plugin Configuration
"

" vimwiki
let g:vimwiki_list = [ { 'path': '~/Documents/wiki' } ]

" nerdtree
map <leader>d :NERDTreeToggle<CR>

" ack
let g:ackprg = 'ag --vimgrep'  " ag is much faster than ack

" bufexplorer
map <leader>bb :BufExplorer<cr>

" Colors
colorscheme solarized
set background=dark


" Swap files and backups
" Don't really need this, since projects are in git
set nobackup
set nowb
set noswapfile


" Line numbering 
set relativenumber
set numberwidth=4


" Searching
set ignorecase  
set smartcase
set hlsearch
set incsearch
map <silent> <leader><cr> :noh<cr>  " clear search highlighting


" Remap some keys to make things a little easier on my hands
let mapleader = ","
let g:mapleader = ","
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" Tabs and indentation
set expandtab
set shiftwidth=2
set tabstop=2
set smarttab
set textwidth=80
set autoindent
set smartindent


" Status line
set laststatus=2
set statusline=\ %t\ Line:%l/%L\ \ %{fugitive#statusline()} 


" Exuberant ctags
set tags=.tags
let g:rails_ctags_arguments = ['-f .tags -R']


" Mouse
" Don't need it, don't want it
set mouse=

" Undesirable whitespace
set listchars=tab:>-,trail:.,extends:#,nbsp:.
set list
