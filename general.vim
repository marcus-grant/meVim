" general.vim
" Segmented vim config file for all general configurations.
" Used for global settings, and miscelaneous ones that don't fit elsewhere.

set showcmd		" show partial commands in statusline
set showmatch		" show matching brackets
set showmode		" show current mode
set ruler		" show ruler
"set number		" show line numbers

" considered superior to smartindent: http://bit.ly/2y03n3x
filetype plugin indent on
"set smartindent     " chose which setting based off file
set expandtab		" insert spaces when TAB is pressed
set tabstop=4		" default spaces used for tabs as 4
set shiftwidth=2	" indentation increments when using '<' & '>'

set noerrorbells	" no beeps please
set modeline		" enable modeline
"set nojoinspaces	" prevents insertion of two spaces after punctiation on join (J)

" More natural splitting behaviors
set splitbelow
set splitright

" Better search defaults
set ignorecase		" make searching case-INSENSITIVE
set smartcase		" ...UNLESS the query has capital letters within it
set gdefault		" use 'g' flag by default with :s/foo/bar/
set magic		" use 'magic' patterns (regex extensions)

