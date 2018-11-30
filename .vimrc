set nocompatible
filetype off 

" set the runtime path to include Vundle and initialize
set rtp+=~/vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Paired surrounding
Plugin 'tpope/vim-surround'

" Prefer distribution package
" toggle comments with gc$count
"Plugin 'tpope/vim-commentary'

" Make vim-surround and vim-commentary work with '.'
Plugin 'tpope/vim-repeat'

" Prefer distribution package
" Git integration
"Plugin 'tpope/vim-fugitive'

" Live git diff
Plugin 'airblade/vim-gitgutter'

" Per-file colored status
Plugin 'itchyny/lightline.vim'

call vundle#end()
filetype plugin indent on

" Default is 4000 ms
set updatetime=100

" Display line numbers
set number relativenumber

" \t maps to 3 spaces
set tabstop=3

" Visual < and > uses tabstop setting
set shiftwidth=0

" Reduce key code/mapped key sequence timeout. Fixes noticable lag when Esc, then "O"
" May cause issues over slow networks
set ttimeoutlen=100

" Search into subfolders
" Allows tab-completion for all file-related tasks
set path +=**

" Display all matching files when we tab complete
set wildmenu

set dictionary+=/usr/share/dict/words

set listchars=trail:@,tab:>-,extends:>,precedes:<
set list

" Add '//' to the first non-whitespace character
autocmd FileType c,cpp,cs,java let b:commentary_format='//%s'

" Add '"' to the first-non-whitespace character
autocmd Bufread,BufNewFile .vimrc let b:commentary_format='"%s'
