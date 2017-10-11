execute pathogen#infect()
color desert
syntax on
filetype plugin indent on
"misc Settings, most of them are taken from c0nk .vimrc
" set backspace=indent,oel "makes backspace key more powerful
set number "Show line number
set ruler "show the row and col number of the cursor position
set listchars=tab:>-,trail:~,extends:>,precedes:<,eol:$ ",space:. "set uprintable char to be displayed as char
set list "enables uprintable char to be displayed
"set showcmd
set showmode

set incsearch "Shows the match while typing
set hlsearch "Highlight found searches

" If mouse, then, mouse is supported
if has('mouse')
	set mouse=a
endif

