call plug#begin()
" vim air-line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" parentheses coloring
Plug 'junegunn/rainbow_parentheses.vim'
" text blocks highlighting switcher
Plug 'junegunn/limelight.vim'
" text journal
Plug 'junegunn/vim-journal'
" Enable emojis
Plug 'junegunn/vim-emoji'
" directory-tree structure
Plug 'preservim/nerdtree'
" edit text surroundings like brackets
Plug 'tpope/vim-surround'
" Alignment
Plug 'junegunn/vim-easy-align'
"fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" for closing do end like structures
Plug 'tpope/vim-endwise'
" other
Plug 'preservim/nerdcommenter'
Plug 'alvan/vim-closetag'
" for languages
Plug 'vim-ruby/vim-ruby'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-rails'
Plug 'ap/vim-css-color'
" visual theme
Plug 'dracula/vim', { 'as': 'dracula' }
" icons support for airline and nerdtree
Plug 'ryanoasis/vim-devicons'

call plug#end()

" -- Configurations --

filetype plugin on
filetype indent on

set encoding=UTF-8

" Enable Syntax Highlighting
syntax enable
syntax on

" Vim-airline font config
let g:airline_powerline_fonts = 1

set mouse=a
" Set the Tab to 2 spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set autoindent
set number
set relativenumber
set numberwidth=2
set smartindent
set fileformats+=mac
set ruler
set laststatus=2
"don't wrap the lines
set nowrap
set wildmenu
set hidden
set hlsearch
set incsearch
set showcmd

"set primary clipboard
set clipboard=unnamedplus

" folding
set foldmethod=syntax
set nofoldenable

""" Theme config
set termguicolors
colorscheme dracula

""" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeShowHidden = 1

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" WebdevIcons
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Limelight
nmap <leader>l :Limelight!!<CR>
xmap <leader>l :Limelight!!<CR>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" Using Emojis as GitGutter symbols
let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
let g:gitgutter_sign_modified_removed = emoji#for('collision')
" Rainbow colors customization
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
let g:rainbow#blacklist = [233, 234]

" Toggle RainbowParentheses at nvim start
autocmd VimEnter * RainbowParentheses

" Easy align
"Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Markdown and Journal
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType journal setlocal shiftwidth=2 tabstop=2 softtabstop=2

" fzf settings
let g:fzf_layout = { 'window': { 'width': 0.99, 'height': 0.99 } }

" Leader key
let mapleader=','

" ===MAPPINGS===

" Undo
nnoremap <silent> <C-z> :u<CR>
" Close Neovim
nnoremap <silent> <C-q> :qa!<CR>
" Close buffer
nmap <leader>q :bw<CR>
" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

