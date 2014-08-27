set nocompatible
set nowrap

filetype off

au!

let bundle = '~/.vim/bundle'

exec 'set rtp+='+bundle+'/Vundle.vim'
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin(bundle)

Plugin 'gmarik/Vundle'
Bundle 'morhetz/gruvbox'
" Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'
" Plugin 'kien/ctrlp.vim'
Plugin 'funorpain/vim-cpplint'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'embear/vim-localvimrc'
Plugin 'clones/vim-fuzzyfinder'
Plugin 'clones/vim-l9'
Plugin 'junegunn/vim-easy-align'
" Plugin 'tpope/vim-commentary'
" Plugin 'vim-scripts/UltiSnips'
" Plugin 'scrooloose/syntastic'
" Plugin 'tomtom/tlib_vim'
" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'gmarik/snipmate.vim'
" Plugin 'vim-scripts/ragtag.vim'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'nelstrom/vim-mac-classic-theme.git'
" Plugin 'klen/python-mode'
" Plugin 'c.vim'

call vundle#end()

syntax on
filetype plugin indent on      " Automatically detect file types.
"set relativenumber

" set gruvbox color scheme
colorscheme gruvbox
set background=dark

let g:ycm_extra_conf_globlist = ['~/dev/*','!~/*']
let g:ycm_server_use_vim_stdout = 0
let g:ycm_server_log_level = 'debug'

let g:NERDSpaceDelims = 1

"setl expandtab tabstop=4 shiftwidth=4 softtabstop=4
au * setl expandtab tabstop=4 shiftwidth=4 softtabstop=4
au FileType python setl expandtab tabstop=4 shiftwidth=4 softtabstop=4
au FileType cpp setl expandtab tabstop=2 shiftwidth=2 softtabstop=2

au BufWritePost $MYVIMRC :source $MYVIMRC | :PluginInstall


" disable key arrow for sake of native vi navigation
inoremap <Up> <esc>:wincmd k<cr>
noremap  <Up> <esc>:wincmd k<cr>
inoremap <Down> <esc>:wincmd j<cr>
noremap  <Down> <esc>:wincmd j<cr>
inoremap <Left> <esc>:wincmd h<cr>
noremap  <Left> <esc>:wincmd h<cr>
inoremap <Right> <esc>:wincmd l<cr>
noremap  <Right> <esc>:wincmd l<cr>

" fast switching between dark and light color themes
noremap <leader>bd <esc>:set background=dark<cr>
noremap <leader>bl <esc>:set background=light<cr>



let mapleader="\\"
let maplocalleader="\\"

inoremap jk <Esc>

nnoremap U :redo<cr>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

let g:localvimrc_whitelist=$HOME.'/.*'
let g:localvimrc_sandbox=0
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" inoremap <tab> <c-r>=UltiSnips_ExpandSnippet()<cr>

let g:cpplint_cmd_filter = '-runtime/references'
let g:cpplint_cmd_linelength = '120'
"let g:cpplint_cmd_root = 'include'
"let g:cpplint_cmd_root = '/home/bepec/dev/pase/App/Media/imp/Miracast/src/'

let g:ctrlp_working_path_mode = 'a'

set pastetoggle=<F10>

" insert filename
:inoremap <leader>if <C-R>=expand("%:t")<CR>

:noremap <leader>fl <c-o>:FufLine<cr>
:noremap <leader>fk <c-o>:FufBuffer<cr>
:noremap <leader>ff <c-o>:FufCoverageFile<cr>

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. <Leader>aip)
nmap <Leader>a <Plug>(EasyAlign)

:command! W :w
