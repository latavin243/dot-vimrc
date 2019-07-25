" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker spell:

" source plugin file {
source $HOME/.vim/plugins.vim
" }

" theme {
colorscheme slate
set background=dark
" }

" basic settings {
syntax enable
syntax on
set clipboard=unnamedplus
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set foldenable
set laststatus=2
set mouse=a
set nocompatible
set noswapfile
set nowrap
set number
set showcmd
set title

let mapleader=","
" }

" match bracket {
set showmatch
set matchtime=2
" }

" indentation {
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
" }

" search {
set hlsearch
set ignorecase
set incsearch
set smartcase
" }

" autocmd {
autocmd vimenter * set nospell
" autocmd BufWritePost * call system("ctags -R")
" }

" key mappings {
inoremap jj <ESC>
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
" }

" get next pattern in visual mode {
xnoremap * :<C-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch()<CR>?<C-R>=@/<CR><CR>

function! s:VSetSearch()
    let temp = @s
    norm! gv"sy
    let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
    let @s = temp
endfunction
" }

" json format {
com! FormatJSON %!python3 -m json.tool
" }

" use local vimrc if available {
if filereadable(expand("$HOME/.vimrc.local"))
    source $HOME/.vimrc.local
endif
" }

" use local bundle if available {
if filereadable(expand("$HOME/.vimbundle.local"))
    source $HOME/.vimbundle.local
endif
" }
