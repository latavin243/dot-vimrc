# dot-vimrc
Simple config file for Vim.

## Prerequisite

Install **curl**, **git** and **vim**.


## Installation

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/GuoQi405/dot-vimrc/master/install.sh)"
```

### Use custom colorscheme
```bash
# example
echo "colorscheme molokai" >> ~/.vimrc.local
```

## Update

### Update vim config
```bash
cd ~/.vim
git pull --rebase
```

### Update plugins
```bash
vim +PlugUpdate +PlugClean +qa
```

