set encoding=utf-8
set noswapfile
set clipboard+=unnamedplus

set number
set linebreak
set showbreak=+++
set textwidth=100
set relativenumber
set mouse=a
set splitright

set showmatch
set smartcase
set hlsearch
set ignorecase
set incsearch
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

set scrolloff=10
set autoindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4

set ruler
set undolevels=1000
set backspace=indent,eol,start

let &t_EI = "\e[2 q"
let &t_SI = "\e[6 q"

call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1

Plug 'jiangmiao/auto-pairs'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'scrooloose/nerdtree'

nnoremap <silent> <C-e> :NERDTreeToggle<CR>

call plug#end()

set background=dark

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

noremap ; l
noremap l k
noremap k j
noremap j h
