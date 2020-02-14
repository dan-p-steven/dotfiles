execute pathogen#infect()
filetype plugin indent on

set autoread
set ruler

set number
set ignorecase
set wildmenu

set lazyredraw
set showmatch

set novisualbell

syntax enable
set nobackup
set noswapfile

set tabstop=4
set shiftwidth=4

set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

nnoremap <C-L> :LLPStartPreview
colorscheme falcon 
