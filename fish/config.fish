if status is-interactive
    # Commands to run in interactive sessions can go here
end

# tokyonight color palette
set -l foreground c0caf5
set -l selection 364a82
set -l comment 565f89
set -l red f7768e
set -l orange ff9e64
set -l yellow e0af68
set -l green 9ece6a
set -l purple 9d7cd8
set -l cyan 7dcfff
set -l pink bb9af7

# syntax highlighting colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# completion pager colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
set -g fish_pager_color_selected_background --background=$selection

oh-my-posh init fish --config ~/.config/bdatsukh.omp.json | source

if type -q exa
  alias ls "exa --oneline --icons --no-user"
  alias ll "exa -l --no-user --icons --git"
  alias lla "ll -a --no-user --icons --git"
end

set -gx term xterm-256color


# nvm
function __check_rvm --on-variable pwd --description 'do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

alias vim=nvim
alias backend="ssh -i $HOME/binary-systems/latest-backend-keyfile.pem ec2-user@ec2-13-250-38-140.ap-southeast-1.compute.amazonaws.com"

export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
