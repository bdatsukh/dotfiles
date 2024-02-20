HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh

bindkey -s ^f "tmux-sessionizer\n"

alias vim=nvim
alias ls="exa --oneline --no-user --icons"
alias ll="exa -l --no-user --icons"
alias lla="ll -a"
alias ..="cd .."
alias g="lazygit"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export XDG_CONFIG_HOME=$HOME/.config
export EDITOR=nvim
export GOPATH=$HOME/go
export PATH=$HOME/.local/bin:$GOPATH/bin:$PATH

eval "$(zoxide init zsh)"
eval "$(oh-my-posh --config $HOME/.config/omp/dracula.omp.json init zsh)"

fpath = ($HOME/appsource/zsh-completions/src $fpath)
