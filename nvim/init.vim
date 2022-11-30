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

" Enable syntax highlighting
syntax enable

" Vim-airline font config
let g:airline_powerline_fonts = 1

set mouse=a
set tabstop=4
set softtabstop=4
set smarttab
set autoindent
set number
set relativenumber
set numberwidth=2
set si "Smart indent
set fileformats+=mac
set ruler
set laststatus=2
set nowrap "don't wrap the lines

""" Theme config
set termguicolors
colorscheme dracula

""" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

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
autocmd VimEnter * RainbowParentheses
" Easy align
"Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
