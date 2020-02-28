execute pathogen#infect()


set nocompatible
set nobackup 		" No backup files
set nowritebackup 	" Don't write backup files
set noswapfile      " No swap files
set history=100 	" Remember the last 100 actions
set ruler 		    " Always show cursor
set showcmd 		" Show incomplete commands
set incsearch 		" Allow to search as you type
set hlsearch 		" Highlight search matches
set smartcase 		" Ignore case in search set ignorecase
set backspace=indent,eol,start
set nowrap
set expandtab
set tabstop=4
set shiftwidth=4
set number
" Highlight tailing whitespace
" See issue: https://github.com/Integralist/ProVim/issues/4
set list listchars=tab:\ \ ,trail:·

" Get rid of the delay when pressing O (for example)
" http://stackoverflow.com/questions/2158516/vim-delay-before-o-opens-a-new-line
set timeout timeoutlen=1000 ttimeoutlen=100

" Always show status bar
set laststatus=2

" Set the status line to something useful
"set statusline=%f\ %=L:%l/%L\ %c\ (%p%%)

" Hide the toolbar
"set guioptions-=T

" UTF encoding
set encoding=utf-8

" Autoload files that have changed outside of vim
set autoread

" Use system clipboard
" http://stackoverflow.com/questions/8134647/copy-and-paste-in-vim-via-keyboard-between-different-mac-terminals
set clipboard+=unnamed

" Don't show intro
set shortmess+=I

" Better splits (new windows appear below and to the right)
set splitbelow
set splitright

" Highlight the current line
set cursorline

" Ensure Vim doesn't beep at you every time you make a mistype
set visualbell

" Visual autocomplete for command menu (e.g. :e ~/path/to/file)
set wildmenu

" redraw only when we need to (i.e. don't redraw when executing a macro)
set lazyredraw

" highlight a matching [{()}] when cursor is placed on start/end character
set showmatch

" Always highlight column 80 so it's easier to see where
" cutoff appears on longer screens
autocmd BufWinEnter * highlight ColorColumn ctermbg=darkred
set colorcolumn=80
colorscheme falcon
"let g:lightline = {
"      \ 'colorscheme': 'falcon',
"      \ }
syntax enable
filetype plugin indent on


" Latex settings
let g:livepreview_previewer = 'evince'
set updatetime=1000
nmap <silent> <C-l> :LLPStartPreview<CR>


" Snippets

"==================================== LATEX ==================================

" Default template
nnoremap \lt :-1read /home/stevenda/.vim/snippets/latex/template.latex<CR>2jo
" \begin
nnoremap \lb :-1read /home/stevenda/.vim/snippets/latex/begin.latex<CR>$<C-v>jI
" \usepackage
nnoremap \lu :-1read /home/stevenda/.vim/snippets/latex/usepackage.latex<CR>$i
" \frac
nnoremap \lf :-1read /home/stevenda/.vim/snippets/latex/fraction.latex<CR>wf}i

" Sections and Subsections
nnoremap \ls :-1read /home/stevenda/.vim/snippets/latex/section.latex<CR>wf}i
nnoremap \lss :-1read /home/stevenda/.vim/snippets/latex/subsection.latex<CR>wf}i
nnoremap \lsss :-1read /home/stevenda/.vim/snippets/latex/subsubsection.latex<CR>wf}i


"==================================== C ======================================

" Default
nnoremap \ct :-1read /home/stevenda/.vim/snippets/c/template.c<CR>3jo
