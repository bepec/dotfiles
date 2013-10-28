set nocompatible
set nowrap

let bundle = '~/.vim/bundle'

filetype off

exec 'set rtp+='.bundle.'/vundle'

call vundle#rc(bundle)

Bundle "gmarik/vundle"
Bundle 'Valloric/YouCompleteMe'
Bundle "vim-scripts/UltiSnips"
Bundle "scrooloose/syntastic"
" Bundle "tomtom/tlib_vim"
" Bundle "MarcWeber/vim-addon-mw-utils"
" Bundle 'gmarik/snipmate.vim'
" Bundle 'vim-scripts/ragtag.vim'
" Bundle 'altercation/vim-colors-solarized'
" Bundle 'nelstrom/vim-mac-classic-theme.git'
" Bundle 'kien/ctrlp.vim'
" Bundle 'klen/python-mode'
" Bundle 'scrooloose/nerdcommenter'
" Bundle 'c.vim'

syntax on
filetype plugin indent on      " Automatically detect file types.
"set relativenumber

au FileType python setl expandtab tabstop=4 shiftwidth=4 softtabstop=4
au FileType cpp setl expandtab tabstop=3 shiftwidth=3 softtabstop=3

" disable key arrow for sake of native vi navigation
inoremap <Up> <esc>:wincmd k<cr>
noremap  <Up> <esc>:wincmd k<cr>
inoremap <Down> <esc>:wincmd j<cr>
noremap  <Down> <esc>:wincmd j<cr>
inoremap <Left> <esc>:wincmd h<cr>
noremap  <Left> <esc>:wincmd h<cr>
inoremap <Right> <esc>:wincmd l<cr>
noremap  <Right> <esc>:wincmd l<cr>

"au BufWritePost $MYVIMRC :source $MYVIMRC<cr>

let mapleader="\\"
let maplocalleader="\\"

inoremap jj <Esc>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

inoremap <tab> <c-r>=UltiSnips_ExpandSnippet()<cr>

