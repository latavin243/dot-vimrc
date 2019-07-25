" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=indent nospell:

call plug#begin('~/.vim/bundle')

Plug 'mhinz/vim-startify'
Plug 'bling/vim-bufferline'
Plug 'bronson/vim-trailing-whitespace'
Plug 'jiangmiao/auto-pairs'
Plug 'mileszs/ack.vim'
Plug 'neomake/neomake'
Plug 'shougo/denite.nvim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'

" easymotion {
    Plug 'easymotion/vim-easymotion'
    nmap ss <Plug>(easymotion-s2)
" }

" nerdtree {
    Plug 'scrooloose/nerdtree'
    map <C-e> :NERDTreeToggle<CR>
    let NERDChristmasTree=0
    let NERDTreeWinSize=30
    let NERDTreeChDirMode=2
    let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
    let NERDTreeShowBookmarks=1
    let NERDTreeWinPos = "left"
    let NERDTreeHidden=1
    " open nerdtree if no file specified
    " autocmd vimenter * if !argc()|NERDTree|endif
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

" guentags {
    Plug 'ludovicchabant/vim-gutentags'
    let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
    let g:gutentags_ctags_tagfile = '.tags'
    let s:vim_tags = expand('~/.cache/tags')
    let g:gutentags_cache_dir = s:vim_tags
    if !isdirectory(s:vim_tags)
        silent! call mkdir(s:vim_tags, 'p')
    endif
" }

" ale: linting {
    Plug 'w0rp/ale'
    let g:ale_linters_explicit = 1
    let g:ale_completion_delay = 500
    let g:ale_echo_delay = 20
    let g:ale_lint_delay = 500
    let g:ale_echo_msg_format = '[%linter%] %code: %%s'
    let g:ale_lint_on_text_changed = 'normal'
    let g:ale_lint_on_insert_leave = 1
    let g:airline#extensions#ale#enabled = 1
" }

" deoplete {
    if has('nvim')
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
        Plug 'Shougo/deoplete.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
    endif
    let g:deoplete#enable_at_startup = 1
    inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" }

" vim-go {
    Plug 'fatih/vim-go'
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

" colorschemes {
    Plug 'flazz/vim-colorschemes'
" }

call plug#end()
