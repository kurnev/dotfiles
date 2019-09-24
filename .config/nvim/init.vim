packadd minpac
call minpac#init()

" Color theme
call minpac#add('lifepillar/vim-solarized8', { 'type' : 'opt'})

" Typescript
call minpac#add('Shougo/vimproc.vim')
call minpac#add('Quramy/tsuquyomi')
call minpac#add('leafgarland/typescript-vim')

" vim status bar
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
let g:airline_theme='solarized'

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

" vim settings
let mapleader="\<SPACE>"
set showmatch           " Show matching brackets.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=4           " Render TABs using this many spaces.
set shiftwidth=4        " Indentation amount for < and > commands.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

if !&scrolloff
set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set nostartofline       " Do not jump to first character with page commands.

" More test stuff
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

" Search and Replace
nmap <Leader>s :%s//g<Left><Left>

" Relative numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

" Toggle between normal and relative numbering.
nnoremap <leader>r :call NumberToggle()<cr>

" Terminal vim
if has('nvim')
    tnoremap <Esc> <C-\><C-n>
    tnoremap <C-v><Esc> <Esc>
endif    

set undofile
