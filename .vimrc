" Genie's vimrc file

" Spacing

set tabstop=4 " tabs look like 4 spaces
set expandtab " tabs are spaces
set softtabstop=4 " tab key inserts 4 spaces

" set syntax highlighting
syntax enable

" show line numbers
set number

" highlights matching bracket/paren
set showmatch

" visual autocomplete for command menu
set wildmenu

" only redraw vim when needed
set lazyredraw

""""""""""""""""""""""""""""
" Plugin stuff
""""""""""""""""""""""""""""

" Auto-Update vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' } " 'as' makes a separate dir for the theme

" Initialize plugin system
call plug#end()

colorscheme dracula
