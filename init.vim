" init.vimrc
" All config files are segmented into categories, and loaded in order
" init: is for configs that need to be loaded first, and for loading plugins
" plugins: plugin-specific configurations
" keys: keymap configurations
" themes: colorscheme configurations, could also be a link to different schemes
" line: status line configurations

" A segmented vim config file that initializes plugins.
" Also, performs actions that should come first


" Start by loading pluguns
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
endif   

" begin plugin list, NOTHING BUT PLUGINS UNTIL plug#end() call
call plug#begin("./plugged")
" Plugins list, ONLY USE SINGLE QUOTES for references

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" vim-tmux-navigator to integrate panes with tmux
Plug 'christoomey/vim-tmux-navigator'

" Initialize plugin system
call plug#end()




" load each config file in order
source general.vim
"source plugins.vim
"source keys.vim
"source themes.vim
"source line.vim
