packadd minpac
call minpac#init()

" Color theme
call minpac#add('lifepillar/vim-solarized8', { 'type' : 'opt'})

" Typescript
call minpac#add('Shougo/vimproc.vim')
call minpac#add('Quramy/tsuquyomi')
call minpac#add('leafgarland/typescript-vim')

" Extra ? 
call minpac#add('tpope/vim-projectionist')
call minpac#add('tpope/vim-dispatch')
call minpac#add('radenling/vim-dispatch-neovim')


" minpac commands
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

" file search
nnoremap <C-p> :<C-u>FZF<CR>

" color theme
set background=light
colorscheme solarized8
