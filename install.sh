mv ~/.vim ~/.vim.orig
mv ~/.vimrc ~/.vimrc.orig
git clone https://github.com/latavin243/dot-vimrc.git ~/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s ~/.vim/vimrc ~/.vimrc
vim +PlugInstall +qa
ln -s ~/.vim/bundle/vim-colorschemes/colors ~/.vim/colors
echo "colorscheme gruvbox" >> ~/.vimrc.local
