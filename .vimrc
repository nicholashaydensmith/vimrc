syntax enable
let base16colorspace=256
set background=dark
"colorscheme base16-default

""""""""""""""""""""""""""""""""""""""""""
""              Vundle
""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'Valloric/MatchTagAlways'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
""""""""""""""""""""""""""""""""""""""""""
""              Vundle
""""""""""""""""""""""""""""""""""""""""""

set ignorecase
set tags=./tags,tags;$HOME
set ruler
set number
set shiftwidth=4
set smartindent
set tabstop=4
set softtabstop=4
set expandtab
set switchbuf+=usetab,newtab
set autochdir
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
autocmd FileType make setlocal noexpandtab
let g:EasyMotion_leader_key = '<Leader>'


" Map ctrl-movement keys to window switching
"map <C-k> <C-w><Up>
"map <C-j> <C-w><Down>
map <C-k> :tabnext<CR>
map <C-j> :tabprevious<CR>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>
map <C-n> :mksession! ~/.vimsessions/last.vim<CR>
map <F5> :source ~/.vimsessions/last.vim<CR>
map <C-t> :tabedit .<CR>

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
nnoremap * :grep <C-R><C-W> %:p:h/*<CR>

noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>

"nnoremap <C-]> :tab split<CR><C-]>
"nnoremap <C-\> :vsp %<CR><C-]>
map <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <leader>. :CtrlPTag<cr>

command W w
command Q q
command Wig wa! | !ig
command TODO tabedit `currTODO`
map <C-Return> :wa!<CR>:!ig<CR>
map mm :w!<CR>
