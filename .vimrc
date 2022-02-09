" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Enable mouse
set mouse=a

" Better copy and paste
set pastetoggle=<F2>
set clipboard=unnamed

" Normal backspace
set bs=2

" Rebind <Leader> key
let mapleader = ","

" Quicksave command -> ctrl + Z
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" Quick quit command
noremap <Leader>e :quit<CR> " Quit current window
noremap <Leader>E :qa!<CR> " Quit all windows

" bind ctrl+<movement> keys to move around the windows, instead of using ctrl+w+<movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" easier moving between tabs
map <Leader>, <esc>:tabprevious<CR>
map <Leader>. <esc>:tabnext<CR>

" map sort function to a key
noremap <Leader>s :sort<CR>

"easier moving of code blocks
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

" Color scheme
set t_Co=256

"Show line numbers and lengths
set number " show line numbers
"set relativenumber " show relative line numbers
set tw=98 " width of document (used by gd)
set nowrap " don't automatically wrap on load
set fo-=t " don't automatically wrap text when typing
set colorcolumn=99
highlight ColorColumn ctermbg=233

" easier formatting of paragraphs
vmap Q gg
nmap Q gqap

" Useful settings
set history=700
set undolevels=700

" Use spaces instead of tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Make search case sensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable backup and swap files - they trigger too many events for file
" system watchers
set nobackup
set nowritebackup
set noswapfile

" Make sure syntax highlighting works (dunno why this broke)
"set re=0

" Enable syntax highlighting
"You need to reload this file for the change to apply
"filetype plugin indent on
"syntax on
