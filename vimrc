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
autocmd VimEnter * set nospell
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

" === plugin settings === {

" nerdtree {
map <C-e> :NERDTreeToggle<CR>
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "left"
" }

" ctrlp {
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
" }

" easymotion {
nmap ss <Plug>(easymotion-s2)
" }

" neocomplcache {
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview

imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

" enable omni completion {
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete
if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.erlang = '[a-zA-Z]\|:'
" }
" }

" golang {

" vim-go {
let g:go_version_warning = 0
let g:go_highlight_functions = 1
let g:go_highlight_function_calls  =  1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = -1
let g:go_highlight_types  =  1
let g:go_highlight_fields  =  1
let g:go_highlight_extra_types = 1
let g:go_fmt_command = "goimports"
let g:go_decls_includes = "func"
let g:go_decls_includes = "func,type"
let g:go_def_mode = 'godef'
let g:go_info_mode = 'gocode'
" }

" }

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
