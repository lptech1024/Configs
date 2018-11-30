set nocompatible
filetype off 

" set the runtime path to include Vundle and initialize
set rtp+=~/vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Currently using plain ctags
" Code completion
"Plugin 'Valloric/YouCompleteMe'

" Paired surrounding
Plugin 'tpope/vim-surround'

" Prefer distribution package
" toggle comments with gc$count
"Plugin 'tpope/vim-commentary'

" Make vim-surround and vim-commentary work with '.'
Plugin 'tpope/vim-repeat'

" Prefer distribution package
" Git integration
"Plugin 'tpope/vim-fugitivie'

" Live git diff
Plugin 'airblade/vim-gitgutter'

" Per-file colored status
Plugin 'itchyny/lightline.vim'

call vundle#end()
filetype plugin indent on

"let g:ycm_collect_identifiers_from_tags_files = 1

" Enable syntax highlighting
syntax on

" Highlight searches
set hlsearch

" gitgutter response time
set updatetime=100

" Never time out on mappings, but don't wait long for keycodes
" May cause issues over slow networks
set notimeout ttimeout ttimeoutlen=100

set number relativenumber

" \t maps to 3 spaces
set tabstop=3

" Visual < and > uses tabstop setting
set shiftwidth=0

" Search into subfolders
" Allows tab-completion for all file-related tasks
set path +=**

" Display all matching files when we tab complete
set wildmenu

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Always display the status line, even if only one window is displayed
set laststatus=2

set dictionary+=/usr/share/dict/words

set listchars=trail:@,tab:>-,extends:>,precedes:<
set list

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on
set autoindent

" Prepend '//' to the first non-whitespace character
autocmd FileType c,cpp,cs,java let b:commentary_format='//%s'

" Prepend '"' to the first-non-whitespace character
autocmd Bufread,BufNewFile .vimrc let b:commentary_format='"%s'
