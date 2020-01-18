# dot-vimrc
Simple config file for Vim.

## Prerequisite

Install **curl**, **git** and **vim**.


## Installation

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/latavin243/dot-vimrc/master/install.sh)"
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

## Features

0. Support mouse click
1. `<Ctrl-e>` to open file explorer
2. `<Ctrl-p>` to search and jump to file
3. `<Ctrl-f>` to search content (non-interactive)
4. `ss` in normal mode, easy-motion
5. A little bit auto-completion
