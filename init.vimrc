" init.vimrc
" A segmented vim config file that initializes plugins.
" Also, performs actions that should come first


" Start by loading pluguns
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Plugins list, ONLY USE SINGLE QUOTES for references

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Initialize plugin system
call plug#end()
