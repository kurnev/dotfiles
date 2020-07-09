export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh
setxkbmap -option ctrl:nocaps

[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

export VISUAL=nvim
export VIMCONFIG="$HOME/.config/nvim"
export VIMDATA="$HOME/.local/share/nvim"
export PATH="$PATH:$VIMCONFIG/pack/bundle/start/fzf/bin"
export FZF_DEFAULT_COMMAND="rg --hidden --files"

source ~/.zsh_aliases
source <(kubectl completion zsh)
PATH=$PATH:$HOME/go/bin

export GOPRIVATE="gitlab.com/meshokteam"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$(yarn global bin):$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
