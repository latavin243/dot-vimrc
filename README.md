# dot-vimrc
Simple config file for Vim.

## Installation
```bash
mv $HOME/.vim $HOME/.vim.orig
mv $HOME/.vimrc $HOME/.vimrc.orig
git clone https://github.com/GuoQi405/dot-vimrc.git $HOME/.vim
ln -s $HOME/.vim/vimrc $HOME/.vimrc
git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
vim +BundleInstall +q +q
ln -s $HOME/.vim/bundle/vim-colorschemes/colors $HOME/.vim/colors
```
