" minpac as plugin bundler
packadd minpac
call minpac#init()
" minpac commands
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()
