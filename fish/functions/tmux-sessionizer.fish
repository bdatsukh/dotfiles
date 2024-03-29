function tmux-sessionizer
    if [ $argv[1] ]
        echo $argv[1] | read selected
    else
        fd . /home ~/personal ~/binary-systems  --max-depth 1 --min-depth 1 -t d  | fzf --prompt="Select project: " | read selected
    end

    if not [ $selected ]
        return
    end

    basename "$selected" | tr . _ | read selected_name

    pgrep tmux | read tmux_running

    if not [ $tmux_running ] && not [ $TMUX ]
        tmux new-session -s $selected_name -c $selected

        commandline -f repaint
        return
    end

    if not tmux has-session -t=$selected_name 2>/dev/null
        tmux new-session -ds $selected_name -c $selected
    end

    if not [ $TMUX ]
        tmux attach -t $selected_name
    else
        tmux switch-client -t $selected_name
    end

    commandline -f repaint
end
