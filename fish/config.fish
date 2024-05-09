if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx term xterm-256color

if type -q exa
    alias ls "exa --no-user --icons"
    alias ll "exa -l --no-user --icons"
    alias lla "ll -a"
end

export MANPAGER="sh -c 'col -bx | batcat -l man -p'"

command -qv nvim && alias vim nvim
command -qv batcat && alias bat batcat
command -qv batcat && alias cat batcat
command -qv lazygit && alias g lazygit

fish_config theme choose dracula
# fish_config theme choose tokyonight

command -qv alacritty && set -gx TERMINAL alacritty
set -gx EDITOR nvim
set -gx NVM_DIR $HOME/.nvm
set -gx GOROOT /usr/local/go
set -gx GOPATH $HOME/go
set -gx PATH $PATH $GOROOT/bin $GOPATH/bin

# nvm
function nvm
    bass source $NVM_DIR/nvm.sh --no-use ';' nvm $argv
end

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
    status --is-command-substitution; and return

    if test -f .nvmrc; and test -r .nvmrc
        nvm use
    else
    end
end

oh-my-posh --config $HOME/.config/omp/dracula.omp.json init fish | source
# oh-my-posh --config $HOME/.config/omp/tokyonight.omp.json init fish | source
oh-my-posh disable notice
zoxide init fish | source
