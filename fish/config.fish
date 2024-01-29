if status is-interactive
    # Commands to run in interactive sessions can go here
end

if type -q eza
    alias ls "eza --oneline --no-user --icons"
    alias ll "eza -l --no-user --icons"
    alias lla "ll -a"
end

set -gx term xterm-256color

command -qv nvim && alias vim nvim
command -qv bat && alias cat bat

alias g lazygit

set NVM_DIR ~/.nvm

# nvm
function nvm
    bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
    status --is-command-substitution; and return

    if test -f .nvmrc; and test -r .nvmrc
        nvm use
    else
    end
end

set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

# alias backend="ssh -i $HOME/binary-systems/latest-backend-keyfile.pem ec2-user@ec2-13-250-38-140.ap-southeast-1.compute.amazonaws.com"

# oh-my-posh init --config ~/.config/omf/poison.omp.json fish | source
# oh-my-posh init --config ~/.config/omf/tokyonight.omp.json fish | source
oh-my-posh init --config ~/.config/omf/dracula.omp.json fish | source

set -gx EDITOR nvim
