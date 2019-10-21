source $HOME/.config/nvim/plugins/nerdtree.vimrc
source $HOME/.config/nvim/plugins/cocnvim.vimrc

" vim status bar
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set encoding=utf-8
" Typescript
call minpac#add('leafgarland/typescript-vim')
call minpac#add('neoclide/coc.nvim', { 'branch': 'release'})
call minpac#add('prettier/vim-prettier', {'do': 'yarn install'})
call minpac#add('posva/vim-vue')
"
" Extra ? 
call minpac#add('tpope/vim-projectionist')
call minpac#add('tpope/vim-dispatch')
call minpac#add('radenling/vim-dispatch-neovim')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-repeat')
call minpac#add('ryanoasis/vim-devicons')
call minpac#add('scrooloose/nerdcommenter')
" Color theme
call minpac#add('lifepillar/vim-solarized8', { 'type' : 'opt'})
" FZF
call minpac#add('junegunn/fzf.vim')
call minpac#add('tpope/vim-fugitive')
call minpac#add('idanarye/vim-merginal')
