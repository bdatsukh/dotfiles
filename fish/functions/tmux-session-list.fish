function tmux-session-list
    fd . /home ~/binary-systems ~/personal --max-depth 1 --min-depth 1 --type directory | xargs -I '{}' basename {} | tr . _
end
