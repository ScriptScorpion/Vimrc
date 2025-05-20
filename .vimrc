" Vim-plug required: https://github.com/junegunn/vim-plug
syntax enable    "highlight code
filetype plugin indent on  " auto detection type of file and whitespaces depends on type of file
scriptencoding utf-8  " all scripts in utf-8
set encoding=utf8     " utf-8 for this file
set number           " numbers like in IDE
set cursorline       " cool colorful columns
set nobackup         " no backup
set nowritebackup    " no backup
set nowrap            " no line break(in one line)
set belloff=all        " no bell
set noerrorbells       " no bell
set novisualbell       " no bell
set expandtab        " use spaces instead of tabs
set smarttab           " smarter placment
set tabstop=4        " how wide tab
set softtabstop=4     " how wide tab
set shiftwidth=4      " how wide tab
set hlsearch         " highlight then searching
set incsearch       " instant see what you are searching
set wildmode=longest,list    " autocompletion settings
set wildmenu       " autocompletion but with gui
set clipboard=unnamedplus  " clipboard features
set ttyfast           " fast scrolling 
set so=30            " visible lines
set nocompatible    " no compatibility with vi
set noswapfile      " no backup
set virtualedit=block  " in visual mode you can go further(you can set, all ,if you want to edit as far as you want in any mode)
set nobackup       " no backup
set nowritebackup  " no backup
set lazydrew     " good for perfomance
set shortmess+=I  " no startup message
set statusline=%f  " shows you status
set laststatus=2   " constant status line
set termguicolors   " true colors
set history=500     " Sets how many lines of history VIM has to remember
set ttimeoutlen=10   " how long wait for esc
nnoremap <C-w>  <C-u>
nnoremap <C-u>  <Nop>

call plug#begin("~/.vim/plugged/")
Plug 'sheerun/vim-polyglot'
call plug#end()
colorscheme retrobox
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let &t_SR = "\e[4 q"

augroup FixCursor
  autocmd!
  autocmd VimLeave * silent !echo -ne "\e[ q"
augroup END
