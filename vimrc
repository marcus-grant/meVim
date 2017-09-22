" All config files are segmented into categories, and loaded in order
" init: is for configs that need to be loaded first, and for loading plugins
" plugins: plugin-specific configurations
" keys: keymap configurations
" colors: colorscheme configurations, could also be a link to different schemes
" line: status line configurations

" load each config file in order
source ./init.vimrc
source ./general.vimrc
source ./plugins.vimrc
source ./keys.vimrc
source ./colors.vimrc
source ./line.vimrc
