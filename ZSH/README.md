# ZSH on Ubuntu on Windows  
## Install
Install ZSH on your Ubuntu WSL using ```sudo apt-get install zsh```via Bash (WSL)

## Run
Paste the provided shortcut named ```ZSH on Ubuntu on Windows.lnk``` in ```%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs```

## Set default default dir to ~/
Launch ZSH, by default, ZSH will open in a windows folder and not in ~/  
Edit ~/.zshrc by adding the following at the end of the file:  
```
#starting ZSH in ~ as default dir when user prompted (keeps launch directory if launched by other way)
if [ -t 1 ]; then
cd
fi
```
## custom ZSH config  
Before using the provided .zshrc, don't forget to install neofetch (for 16.04 Ubuntu WSL, then see [here](https://github.com/dylanaraps/neofetch/wiki/Installation#ubuntu-1610-and-below)

## Vim SetUp  
~/.vimrc dotfile contains some settings, mostly taken from [c0nk](https://github.com/c0nk/.vim/blob/master/vimrc) dotfiles
~/.vim/autoload and bundle are used for [Pathogen](https://github.com/tpope/vim-pathogen/) and other plugins
