execute pathogen#infect()
color desert
syntax on
filetype plugin indent on
"misc Settings, most of them are taken from c0nk .vimrc
" set backspace=indent,oel "makes backspace key more powerful
set number "Show line number
set ruler "show the row and col number of the cursor position

set listchars=tab:>-,trail:~,extends:>,precedes:<,eol:$,space:· "set uprintable char to be displayed as char
"set listchars=tab:>-,trail:~,extends:>,precedes:<,eol:$,space:. set uprintable char to be displayed as char
set list "enables uprintable char to be displayed

"vim-indent-guides related settings
let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_guide_size = 1
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

"set showcmd
set visualbell "used to disable the ANNOYING BEEEEEEP
" set t_vb=1

set incsearch "Shows the match while typing
set hlsearch "Highlight found searches

" If mouse, then, mouse is supported
if has('mouse')
	set mouse=a
endif

"disable showmode when using airline
"set showmode

"Airline config
set noshowmode
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.space = ' '
let g:airline_symbols_ascii = 1
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#left_sep = '||'
let g:ailine_left_sep = '|'
let g:airline_right_sep = '|'
let g:airline_right_alt_sep = '||'
let g:airline_left_alt_sep = '||'
let g:airline_symbols.readonly = 'RO'
let g:airline_symbols.linenr = 'ln'
"let g:airline_symbols.linenr = 'Ξ'
let g:airline_symbols.branch = 'br'
let g:airline_symbols.paste = 'p'
"let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.whitespace = '' "disable whitespace
let g:airline_symbols.maxlinenr = '' "disable max line symbol
let g:airline_symbols.spell = 'sp'
let g:airline_symbols.notexists = 'nex'
let g:airline_symbols.crypt = "crpt"
