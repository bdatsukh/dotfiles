function fish_prompt
    set --local omp_status_cache_temp $status
    set --local omp_pipestatus_cache_temp $pipestatus
    # clear from cursor to end of screen as
    # commandline --function repaint does not do this
    # see https://github.com/fish-shell/fish-shell/issues/8418
    printf \e\[0J
    if test "$omp_transient" = "1"
      /opt/homebrew/bin/oh-my-posh print transient --config $POSH_THEME --shell fish --status $omp_status_cache --pipestatus="$omp_pipestatus_cache" --execution-time $omp_duration --stack-count $omp_stack_count --shell-version $FISH_VERSION --no-status=$omp_no_exit_code
      return
    end
    set --global omp_status_cache $omp_status_cache_temp
    set --global omp_pipestatus_cache $omp_pipestatus_cache_temp
    set --global omp_stack_count (count $dirstack)
    set --global omp_duration "$CMD_DURATION$cmd_duration"
    set --global omp_no_exit_code false
    # check if variable set, < 3.2 case
    if set --query omp_lastcommand; and test "$omp_lastcommand" = ""
      set omp_duration 0
      set omp_no_exit_code true
    end
    # works with fish >=3.2
    if set --query omp_last_status_generation; and test "$omp_last_status_generation" = "$status_generation"
      set omp_duration 0
      set omp_no_exit_code true
    else if test -z "$omp_last_status_generation"
      # first execution - $status_generation is 0, $omp_last_status_generation is empty
      set omp_no_exit_code true
    end
    if set --query status_generation
      set --global --export omp_last_status_generation $status_generation
    end
    set_poshcontext
    # validate if the user cleared the screen
    set --local omp_cleared false
    set --local last_command (history search --max 1)
    if test "$last_command" = "clear"
      set omp_cleared true
    end
    /opt/homebrew/bin/oh-my-posh print primary --config $POSH_THEME --shell fish --status $omp_status_cache --pipestatus="$omp_pipestatus_cache" --execution-time $omp_duration --stack-count $omp_stack_count --shell-version $FISH_VERSION --cleared=$omp_cleared --no-status=$omp_no_exit_code
end
