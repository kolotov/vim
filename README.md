# VIM as IDE

My configuration for vim which I use for PHP development.
Not overloaded with plugins, suitable even for vim beginners.

# Preparation for macOS

```
brew install python@3
brew install vim

#update path
exec -l $SHELL

#restar terminal
exit

#check +python3
vim --version | grep python3 | head -n 1
 ```
# Installation
```
mkdir -p ~/.config/
cd ~/.config/
git clone git@github.com:kolotov/vim.git
ln -s ~/.config/vim/.vim ~/.vim
ln -s ~/.config/vim/.viminfo ~/.viminfo
ln -s ~/.config/vim/.vimrc ~/.vimrc
```
In VIM
```
:PlugInstall
```
