export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

alias docs='cd ~/docs/'
alias conf="cd ~/.config/nvim/"
alias vi="nvim"
alias traefik="sudo ./traefik"
alias tmux="~/.tmux-startup.sh"

export PNPM_HOME="/home/yhk/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:/usr/local/bin
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=$HOME/.local/bin:$PATH

source $ZSH/oh-my-zsh.sh
