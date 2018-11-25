set nocompatible
filetype off 

" set the runtime path to include Vundle and initialize
set rtp+=~/vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Paired surrounding
Plugin 'tpope/vim-surround'

" toggle comments with gc$count
Plugin 'tpope/vim-commentary'

" Make vim-surround and vim-commentary work with '.'
Plugin 'tpope/vim-repeat'

" Live git diff
Plugin 'airblade/vim-gitgutter'

" Per-file colored status
Plugin 'itchyny/lightline.vim'

call vundle#end()
filetype plugin indent on

" Display line numbers
set number relativenumber

" \t maps to 2 spaces
set tabstop=2

" Visual < and > uses tabstop setting
set shiftwidth=0

" Search into subfolders
" Allows tab-completion for all file-related tasks
set path +=**

" Display all matching files when we tab complete
set wildmenu

set dictionary+=/usr/share/dict/words

set listchars=trail:@,tab:>-,extends:>,precedes:<
set list

autocmd FileType c setlocal commentstring=//\ %s
