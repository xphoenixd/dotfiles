if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH=$HOME/.oh-my-zsh
export WINEPREFIX=$HOME/.wine/drive_c

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git history-substring-search command-not-found zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh


alias ls='ls --color=auto'

alias vim='nvim'

neofetch


path+=~/scripts

# Pywal

#(cat ~/.cache/wal/sequences &)

#source ~/.cache/wal/colors-tty.sh
# NVM
[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/bash_completion
source /usr/share/nvm/install-nvm-exec

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
