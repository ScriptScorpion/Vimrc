" Vim-plug required: https://github.com/junegunn/vim-plug
let fortran_free_source=1 " Fortran syntax highlighting fixed
syntax enable    "highlight code
filetype plugin indent on  " auto detection type of file and whitespaces depends on type of file
scriptencoding utf-8  " all scripts in utf-8
set encoding=utf8     " utf-8 for this file

set nobackup         " no backup
set nowritebackup    " no backup
set noswapfile      " no backup

set number           " numbers like in IDE
set mouse=a         " mouse text selection turned on
" set cursorline       " cool colorful columns(required theme)
set nowrap            " no line break(in one line)
set belloff=all        " no bell
set noerrorbells       " no bell
set novisualbell       " no bell
set expandtab        " use spaces instead of tabs
set smarttab           " smarter placment
set autoindent        " new line with space as previous line
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
set virtualedit=block  " in visual mode you can go further(you can set, all ,if you want to edit as far as you want in any mode)
set lazyredraw     " good for perfomance
set shortmess+=I  " no startup message
set statusline=%f  " shows you status
set laststatus=2   " constant status line
set termguicolors   " true colors
set history=500     " Sets how many lines of history VIM has to remember
set ttimeoutlen=10   " how long wait for esc
set matchtime=1  " how long highlight will be after cursor leaves
" if you doing often split windows don't use my remap
nnoremap <C-w>  <C-u>
nnoremap <C-u>  <Nop>
" you can add this too if you want: set showcmd - typed commands; set t_Co=256 - tell vim that the terminal has 256 colors; set autoread - read if file is changed. 

call plug#begin("~/.vim/plugged/")
Plug 'sheerun/vim-polyglot'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'ervandew/supertab'
" auto completion Plug 'Valloric/YouCompleteMe' 
" if using gentoo Plug 'gentoo/gentoo-syntax'
call plug#end()
" colorscheme pick theme that you want
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let &t_SR = "\e[4 q"

augroup FixCursor
  autocmd!
  autocmd VimLeave * silent !echo -ne "\e[ q"
augroup END
