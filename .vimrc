" General
if &compatible
  set nocompatible  " disable vi-compatibility
endif
set encoding=utf-8  " always use utf-8
set t_Co=256        " explicitly support 256-colored terminal
set mouse=a         " scroll and select with mouse
set title           " set window title to the file currently being edited
set background=dark
syntax enable


" Manage temp files
set directory=$HOME/.vim/.swp//
set undodir=~$HOME/.vim/.undo//
set backupdir=$HOME/.vim/.backup//


" Leader
let mapleader = " "


" Autosave on buffer change or focus loss
autocmd BufLeave,FocusLost * silent! w

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright


" Formatting
set backspace=2      " backspace deletes like most programs in insert mode
set colorcolumn=80   " show a vertical line at 80 characters
set modelines=0      " disable modelines as a security precaution
set nomodeline       " ignore file’s modelines; use vimrc configurations instead
set number           " show line numbers on the sidebar
set ruler            " show the cursor position all the time
set laststatus=2     " always display the status line
set showtabline=2    " always display the tabline, even if there is only one tab
set showcmd          " display incomplete commands
set nowrap           " don't wrap long lines

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·


" Indentation
set autoindent       " copy indentation from the previous line
set smartindent      " be smart about it
set expandtab        " convert tabs to spaces
set shiftwidth=2     " use indents of 2 spaces when autoindenting
set softtabstop=2    " let backspace delete indent
set tabstop=2        " indent using two spaces


" Search
set hlsearch         " enable search highlighting
set ignorecase       " case insensitive searching
set incsearch        " do incremental searching that shows partial matches


" Navigation
set path+=**         " search down into subfolders
set wildmenu         " display all matching files on tab autocomplete
set wildignore+=**/node_modules/**,*/tmp/*

" Git commit messages: wrap subject at 50 chars + wrap body at 72 chars
autocmd FileType gitcommit setlocal nolist
au BufReadPost,BufNewFile *git/rebase-merge/git-rebase-todo set colorcolumn=120,86,64
au BufReadPost,BufNewFile *git/COMMIT_EDITMSG set colorcolumn=120,72,50


" Plugins managed by vim-plug
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
call plug#end()


" Key mappings
noremap <Leader> :NERDTreeToggle<CR>


" NERDTree
let g:NERDTreeShowHidden = 1
:command NE NERDTree
:command NF NERDTreeFind

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

