function tmux-neww-sessionizer
    pgrep tmux | read tmux_running

    if not [ $TMUX ]
        tmux-sessionizer
    else
        tmux neww tmux-sessionizer
    end
end
