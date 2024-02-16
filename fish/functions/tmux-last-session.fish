function tmux-last-session
    pgrep tmux | read tmux_running

    if not [ $tmux_running ] && not [ $TMUX ]
        tmux-sessionizer
    else
        if not [ $TMUX ]
            tmux attach &>/dev/null
        else
            tmux switch-client -l &>/dev/null
        end
    end
end
