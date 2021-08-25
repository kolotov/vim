# VIM as IDE

My configuration for vim which I use for PHP development.
Not overloaded with plugins, suitable even for vim beginners.

# Preparation for macOS

```
brew install node
brew install python@3
brew install vim

#update path
exec -l $SHELL

#restart terminal
exit

#check +python3
vim --version | grep python3 | head -n 1
 ```
# Installation
```
mkdir -p ~/.config/
cd ~/.config/
git clone https://github.com/kolotov/vim.git
ln -s ~/.config/vim/.vim ~/.vim
ln -s ~/.config/vim/.viminfo ~/.viminfo
ln -s ~/.config/vim/.vimrc ~/.vimrc
```
In VIM
```
:PlugInstall
:CocInstall coc-tsserver coc-json coc-html coc-css  coc-phpls
```
# Problems

```
[coc.nvim] build/index.js not found, please install dependencies and compile coc.nvim by: yarn install
```

Solution:
```
:call coc#util#install()
```
