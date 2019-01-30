
" No need for backwards vi compatibility
set nocompatible
filetype off
filetype plugin indent on
syntax on

runtime macros/matchit.vim


" Remap some keys to make things a little easier on my hands
let mapleader = ","
let g:mapleader = ","

" Unmap the arrow keys; real mean use motion keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


" Some basic configurations
set hidden  " switch buffers without saving
set backspace=eol,start,indent  " make backspace sane
set cmdheight=1
set magic  " make regular expressions sane
set showmatch  " show matching brackets


" Bundles
set rtp+=~/.vim/bundle/Vundle.vim

" Call :PluginInstall in vim after
" making any changes to this section
call vundle#begin()
  Plugin 'vimwiki/vimwiki'
  Plugin 'junegunn/fzf.vim'
  Plugin 'vim-ruby/vim-ruby'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-fugitive'
  Plugin 'tpope/vim-rails'
  Plugin 'tpope/vim-rake'
  Plugin 'tpope/vim-bundler'
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-repeat'
  Plugin 'tpope/vim-endwise'
  Plugin 'MarcWeber/vim-addon-mw-utils'
  Plugin 'tomtom/tlib_vim'
  Plugin 'garbas/vim-snipmate'
  Plugin 'scrooloose/nerdtree'
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'pangloss/vim-javascript'
  Plugin 'mileszs/ack.vim'
  Plugin 'jlanzarotta/bufexplorer'
  Plugin 'kana/vim-textobj-user'
  Plugin 'nelstrom/vim-textobj-rubyblock'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'mhinz/vim-signify'
call vundle#end()


"
" Plugin Configuration
"

" fzf
set rtp+=/usr/local/opt/fzf
nmap ; :Buffers<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>t :Tags<CR>

" vimwiki
let g:vimwiki_list = [
  \ { 'path': '/Users/william/Projects/sywtbagd/wiki' },
  \ { 'path': '/Users/william/Google\ Drive/vimwiki/games' }]

" nerdtree
map <leader>d :NERDTreeToggle<CR>

" ack
let g:ackprg = 'ag --vimgrep'  " ag is much faster than ack

" bufexplorer
map <leader>bb :BufExplorer<cr>

" Colors
colorscheme harlequin
set background=dark
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

" Turn of fugly scrollbars in MacVim
set guioptions=


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


" Tabs and indentation
set expandtab
set shiftwidth=2
set tabstop=2
set smarttab
set textwidth=110
set autoindent
set smartindent

" Signify gutter settings
let g:signify_vcs_list = [ 'git' ]

" Status line
let g:airline_theme='term'
set laststatus=2

" Exuberant ctags
" let g:rails_ctags_arguments = ['--exclude=".git .bundle" -f .tags -R']
" set tags=.tags;
map <leader>t :!ctags -R <CR><CR>


" Mouse
" Don't need it, don't want it
set mouse=

" Undesirable whitespace
set listchars=tab:>-,trail:.,extends:#,nbsp:.
set list


" Window splits
set equalalways  " make new windows equal in size

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" Buffer management
map <leader>bd :Bclose<cr>  " Close the current buffer
map <leader>ba :1,300 bd!<cr> " Close all the buffers


" Toggle fold with just spacebar
nnoremap <Space> za
nnoremap z0 :set foldlevel=0<cr>
nnoremap z1 :set foldlevel=1<cr>


" Allow per-project configuration
set exrc
set secure



