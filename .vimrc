execute pathogen#infect()

" Set leader key
let mapleader=" "

" Hit jk to escape
inoremap jk <esc>

set number
set numberwidth=3

set hidden
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start
set smartindent
set copyindent
set shiftwidth=4
set shiftround
set showmatch
set ignorecase
set smartcase
set expandtab
set hlsearch
set incsearch

set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set noeb vb t_vb=

set nobackup
set noswapfile

noremap <F2> :set invpaste paste?<CR>i
set pastetoggle=<F2>

"Performance settings.
set ttyfast
set lazyredraw
"set synmaxcol=300

"Scroll settings.
set scrolloff=6

" No startup message.
set shortmess+=I

" Replace all occurences in line by default.
set gdefault

" Consistent yank.
nnoremap Y y$

"filetype plugin indent on
"autocmd filetype python set expandtab
autocmd filetype make set noexpandtab

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

" Lines
" Delete line
nnoremap <leader>d dd
" Shift line down
noremap <leader>- ddp
" Shift line up
noremap <leader>_ ddkp

" Edit .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Source .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" Disable some default keys
inoremap <esc> <nop>

" Disable some nuisance keys
nnoremap <F1> <nop>
nnoremap Q <nop>
nnoremap K <nop>

" Row by row movement instead of line by line
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" Easy window navigation
noremap <leader>h <C-w>h
noremap <leader>j <C-w>j
noremap <leader>k <C-w>k
noremap <leader>l <C-w>l

noremap <Right> <nop>
noremap <Left> <nop>
noremap <Up> <nop>
noremap <Down> <nop>

nnoremap <silent> ,/ :nohlsearch<CR>

nnoremap <leader>p :CtrlP

" Use ; instead of :.
nnoremap ; :

" Use Q for formatting the current paragraph (or selection)
vnoremap Q gq
nnoremap Q gqap

" Next search result, next paragraph centers cursor.
nnoremap n nzz
nnoremap } }zz

" Save with CTRL-S
nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>a

" Trim trailing whitespace on save.
autocmd BufWritePre * :%s/\s\+$//e

" Syntax highlighting.
au BufReadPost,BufNewFile *.twig colorscheme koehler
au BufReadPost,BufNewFile *.css colorscheme slate
au BufReadPost,BufNewFile *.js colorscheme slate2
au BufReadPost,BufNewFile *.py colorscheme molokaiyo
au BufReadPost,BufNewFile *.html colorscheme monokai
au BufReadPost,BufNewFile *.java colorscheme monokai

autocmd FileType c,cpp,java,scala let b:comment_leader = '//'
autocmd FileType sh,ruby,python   let b:comment_leader = '#'
autocmd FileType conf,fstab       let b:comment_leader = '#'
autocmd FileType tex              let b:comment_leader = '%'
autocmd FileType mail             let b:comment_leader = '>'
autocmd FileType vim              let b:comment_leader = '"'

syntax on
colorscheme monokai
hi NonText cterm=NONE ctermfg=NONE
hi Normal ctermbg=NONE

