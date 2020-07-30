set -x FZF_DEFAULT_COMMAND 'rg --files'
set -gx PATH $HOME/.cargo/bin $PATH

alias kb-refresh="setxkbmap -layout us,ru -option grp:alt_shift_toggle setxkbmap -option ctrl:nocaps"
alias typescript="tsc"
alias sql-local="mysql --user=root --password=qqq111 --host=localhost --protocol=tcp --database=meshok"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias vim='nvim'
alias vi='nvim'
alias dcl="docker-compose logs -f"
alias drm="docker ps -a --format={{.ID}} | xargs docker stop | xargs docker rm"

starship init fish | source
