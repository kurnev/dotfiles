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
export FZF_DEFAULT_COMMAND="rg --files"

source ~/.zsh_aliases
