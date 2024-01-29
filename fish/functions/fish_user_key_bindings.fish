function fish_user_key_bindings
    # peco
    bind \cr peco_select_history # Bind for peco select history to Ctrl+R

    # prevent iterm2 from closing when typing Ctrl-D (EOF)
    bind \cd delete-char

    # tmux-sessionizer
    bind \cf tmux-sessionizer

    # last-session
    bind \cg tmux-last-session
end
