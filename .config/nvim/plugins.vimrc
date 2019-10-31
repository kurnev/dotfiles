source $HOME/.config/nvim/plugins/nerdtree.vimrc
source $HOME/.config/nvim/plugins/airline.vimrc

" vim status bar

call minpac#add('leafgarland/typescript-vim')
call minpac#add('prettier/vim-prettier', {'do': 'yarn install'})
call minpac#add('posva/vim-vue')
call minpac#add('tpope/vim-projectionist')
call minpac#add('tpope/vim-dispatch')
call minpac#add('radenling/vim-dispatch-neovim')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-repeat')
"call minpac#add('ryanoasis/vim-devicons')
call minpac#add('scrooloose/nerdcommenter')
call minpac#add('lifepillar/vim-solarized8', { 'type' : 'opt'})
call minpac#add('junegunn/fzf.vim')
call minpac#add('tpope/vim-fugitive')
call minpac#add('idanarye/vim-merginal')
"
" Last to override keymaps
"
source $HOME/.config/nvim/plugins/cocnvim.vimrc
