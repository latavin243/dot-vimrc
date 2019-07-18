set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'mhinz/vim-startify'
Bundle 'scrooloose/nerdtree'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'vim-airline/vim-airline'
Bundle 'easymotion/vim-easymotion'

Bundle 'tpope/vim-surround'
Bundle 'jiangmiao/auto-pairs'
Bundle 'bling/vim-bufferline'
Bundle 'tpope/vim-abolish'
Bundle 'majutsushi/tagbar'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'mileszs/ack.vim'

" Auto Completion
Bundle 'Shougo/neocomplcache'

" Golang
Bundle 'fatih/vim-go'

" Themes
Bundle 'flazz/vim-colorschemes'

filetype plugin indent on     " required!

