function tmux-fzf-preview
    if [ $argv[1] ]
        echo $argv[1] | read selected
    else
        return
    end

    fd $selected /home ~/binary-systems ~/personal --max-depth 1 --min-depth 1 --type directory | read selected_path
    if not [ $selected_path ]
        commandline -f repaint

        return
    end

    if not tmux has-session -t=$selected 2>/dev/null
        echo "There is no session:" $selected_path
        ll $selected_path

        return
    end

    tmux capture-pane -ep -t $selected | bat --color=always --style plain
end
