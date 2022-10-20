if (( $+commands[telepresence] )); then
  # If the completion file does not exist, generate it and then source it
  # Otherwise, source it and regenerate in the background 
    if [[ ! -f "$ZSH_CACHE_DIR/completions/_telepresence" ]]; then
     	telepresence completion zsh | tee "$ZSH_CACHE_DIR/completions/_telepresence" >/dev/null;
      	source "$ZSH_CACHE_DIR/completions/_telepresence"	  
    else
      source "$ZSH_CACHE_DIR/completions/_telepresence"
      telepresence completion zsh | tee "$ZSH_CACHE_DIR/completions/_telepresence" >/dev/null &|;
    fi
fi
