" Add char length guides to git commit messages
" Wrap subject at 50 chars
" Wrap body at 72 chars
autocmd FileType gitcommit setlocal nolist
au BufReadPost,BufNewFile *git/rebase-merge/git-rebase-todo set colorcolumn=120,86,64
au BufReadPost,BufNewFile *git/COMMIT_EDITMSG set colorcolumn=120,72,50

" Enable syntax highlighting
syntax on
