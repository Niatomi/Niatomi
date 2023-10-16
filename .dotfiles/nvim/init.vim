set encoding=utf-8
set noswapfile

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

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1

Plug 'deoplete-plugins/deoplete-jedi'
Plug 'zchee/deoplete-jedi'
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
let g:python3_host_prog = '/home/niatomi/.pyenv/versions/3.10.11/envs/neovim3/bin/python'

Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='onedark'

Plug 'jiangmiao/auto-pairs'

Plug 'https://github.com/rafi/awesome-vim-colorschemes'

Plug 'scrooloose/nerdtree'
nnoremap <silent> <C-e> :NERDTreeToggle<CR>

call plug#end()

set background=dark
colorscheme onedark

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
call deoplete#custom#option('max_list', 10)
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/
