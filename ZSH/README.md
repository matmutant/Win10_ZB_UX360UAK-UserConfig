# ZSH on Ubuntu on Windows  
## Install
Install ZSH on your Ubuntu WSL using ```sudo apt-get install zsh```via Bash (WSL)

## Run
Paste the provided shortcut in ```%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs```

## Set default default dir to ~/
Launch ZSH, by default, ZSH will open in a windows folder and not in ~/  
Edit ~/.zshrc by adding the following at the end of the file:  
```
#starting ZSH in ~ as default dir when user prompted (keeps launch directory if launched by other way)
if [ -t 1 ]; then
cd
fi
```
