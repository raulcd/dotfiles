set nocompatible

set guifont=Monaco:h16

set lines=40 columns=170

colorscheme desert

syntax on

set softtabstop=4
set smartindent
set autoindent
 
set hlsearch
set incsearch
set showmatch
 
set colorcolumn=80

set number

" General Stuff
set nocp
filetype plugin on

if has("autocmd")
" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on
" ...
endif

set wildmode=longest:full
set wildmenu


" Python indenting
set tabstop=4
set shiftwidth=4
set expandtab


" CTags build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --python-kinds=-i --fields=+iaS --extra=+q .<CR>


" CommandT
map <C-F11> :CommandT <CR>


" PyLint
autocmd FileType python compiler pylint
let g:pylint_onwrite = 0


" SCons
au BufNewFile,BufRead SCons* set filetype=scons

" Pep8
let g:pep8_map='<C-F10>'
