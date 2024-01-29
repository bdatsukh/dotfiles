function fish_right_prompt
    if test "$omp_transient" = "1"
      echo -n ""
      set omp_transient 0
      set has_omp_tooltip false
      return
    end
    if test -n "$omp_tooltip_prompt"
      echo -n $omp_tooltip_prompt
      set omp_tooltip_prompt  ""
      set has_omp_tooltip true
      return
    end
    set has_omp_tooltip false
    /opt/homebrew/bin/oh-my-posh print right --config $POSH_THEME --shell fish --status $omp_status_cache --execution-time $omp_duration --stack-count $omp_stack_count --shell-version $FISH_VERSION
end
