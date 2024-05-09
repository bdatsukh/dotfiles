function fish_user_key_bindings
    bind \eh backward-word
    bind \el forward-word

    bind \cd delete-char

    # bind tmux-sessionizer
    # bind \ef tmux-sessionizer
    # bind \cf tmux-switcher
    bind \cf tmux-neww-sessionizer
end

fzf_key_bindings
