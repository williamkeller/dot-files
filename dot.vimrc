
filetype plugin indent on
syntax on

" Some basic configurations
set hidden                      " switch buffers without saving
set cmdheight=1
set magic                       " make regular expressions sane
set showmatch                   " show matching brackets


"
" Bundles
"
" Call :PluginInstall in vim after
" making any changes to this section
call plug#begin('~/.vim/bundles')

  Plug 'vimwiki/vimwiki'
"  Plug 'junegunn/fzf', { 'dir': '/usr/local/opt/fzf' }
  Plug 'junegunn/fzf.vim'
  Plug 'vim-ruby/vim-ruby'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-rake'
  Plug 'nelstrom/vim-textobj-rubyblock'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-bundler'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-endwise'
  Plug 'scrooloose/nerdtree'
  Plug 'pangloss/vim-javascript'
  Plug 'mileszs/ack.vim'
  Plug 'jlanzarotta/bufexplorer'
  Plug 'kana/vim-textobj-user'
  Plug 'mhinz/vim-signify'
  Plug 'janko/vim-test'

  "
  " Snippet support
  Plug 'MarcWeber/vim-addon-mw-utils'
  Plug 'tomtom/tlib_vim'
  Plug 'garbas/vim-snipmate'

  "
  " Language Server and semantic completions
  Plug 'dense-analysis/ale'
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
call plug#end()


" vimwiki
let g:vimwiki_list = [
\ { 'path': '/Users/william/Documents/wiki' },
\ { 'path': '/Users/william/Documents/the-one-ring/wiki' },
\ { 'path': '/Users/william/Documents/coconut-central/wiki' }
\ ]


" Snippets
let g:snipMate = { 'snippet_version' : 1 }
imap <C-K> <Plug>snipMateNextOrTrigger


" Line numbering
set relativenumber
set numberwidth=4

" Swap files and backups
" Don't really need this, since projects are in git
set nobackup
set nowb
set noswapfile

" Signify gutter settings
let g:signify_vcs_list = [ 'git' ]

" Mouse
" Don't need it, don't want it
set mouse=

" Undesirable whitespace
set listchars=tab:>-,trail:.,extends:#,nbsp:.
set list

" Window splits
set equalalways  " make new windows equal in size

" Toggle fold with spacebar
nnoremap <Space> za
nnoremap z0 :set foldlevel=0<cr>
nnoremap z1 :set foldlevel=1<cr>

let signcolumn=1

"
" Load all of the configuration modules
"
source $HOME/.vim/config/keymaps.vim
source $HOME/.vim/config/visual.vim
source $HOME/.vim/config/semantic.vim
source $HOME/.vim/config/testing.vim
source $HOME/.vim/config/searching.vim
source $HOME/.vim/config/statusline.vim

" Allow per-project configuration
set exrc
set secure

" Probably not the best place to put this, but I'm in a hurry
autocmd BufNewFile,BufRead *.html.erb set filetype=html
