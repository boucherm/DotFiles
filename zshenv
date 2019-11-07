# Aliases
# set cursor style ( see 'man 7 urxvt' )
alias cursor_underline='[ $TMUX ] &&  echo "\033Ptmux;\033\033[3 q\033\\" || echo "\033[3 q"'
alias cursor_block='[ $TMUX ] &&  echo "\033Ptmux;\033\033[1 q\033\\" || echo "\033[1 q"'
