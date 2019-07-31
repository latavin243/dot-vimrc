" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker nospell:

call plug#begin('~/.vim/bundle')

Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-bufferline'
Plug 'bronson/vim-trailing-whitespace'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
Plug 'mileszs/ack.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'

" ctrlsf {{
Plug 'dyng/ctrlsf.vim'
noremap <c-f> :CtrlSF<space>
" }}

" easymotion {
Plug 'easymotion/vim-easymotion'
nmap ss <Plug>(easymotion-s2)
" }

" nerdtree {
Plug 'scrooloose/nerdtree'
map <C-e> :NERDTreeToggle<CR>
let g:NERDChristmasTree=0
let g:NERDTreeWinSize=30
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let g:NERDTreeShowBookmarks=1
let g:NERDTreeWinPos = 'left'
let g:NERDTreeHidden=1
let g:NERDTreeDirArrowExpandable='+'
let g:NERDTreeDirArrowCollapsible='-'
" close if nerdtree is the last window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }

" leaderf {
Plug 'yggdroot/leaderf'
let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<m-n>'
noremap <c-n> :LeaderfMru<cr>
noremap <m-p> :LeaderfFunction!<cr>
noremap <m-n> :LeaderfBuffer<cr>
noremap <m-m> :LeaderfTag<cr>
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }
let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.20
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}
" }

" neocomplcache {
Plug 'Shougo/neocomplcache'
" }

" colorschemes {
Plug 'flazz/vim-colorschemes'
" }

call plug#end()
