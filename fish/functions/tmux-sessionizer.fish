function tmux-active-session-list
    tmux ls -F'#{session_name}'
end

function tmux-sessionizer
    if [ $argv[1] ]
        echo $argv[1] | read selected
    else
        tmux-active-session-list | sort | fzf --bind 'ctrl-/:reload(tmux-session-list | sort -r)' --prompt="Select session(project): " --preview "tmux-fzf-preview {}" --preview-window=65% | read selected
        if not [ $selected ]
            commandline -f repaint
            return
        end
    end

    fd $selected /home ~/binary-systems ~/personal --max-depth 1 --min-depth 1 --type directory | read selected_path
    if not [ $selected_path ]
        commandline -f repaint

        return
    end

    pgrep tmux | read tmux_running

    if not [ $tmux_running ] && not [ $TMUX ]
        tmux new-session -s $selected -c $selected_path

        commandline -f repaint
        return
    end

    if not tmux has-session -t=$selected 2>/dev/null
        tmux new-session -ds $selected -c $selected_path
    end

    if not [ $TMUX ]
        tmux attach -t $selected
    else
        tmux switch-client -t $selected
    end

    commandline -f repaint
end
