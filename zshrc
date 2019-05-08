# See
# http://dustri.org/b/my-zsh-configuration.html
# for more awesome stuff

# The one thou shall practice
autoload -U zmv
#setopt PRINT_EXIT_VALUE #nice for script debugging

# HISTORY
export HISTSIZE=200000 # n lines kept in history
export SAVEHIST=100000 # n lines saved in history after logout
export HISTFILE=~/.zshhistory
setopt APPEND_HISTORY
setopt hist_ignore_all_dups
setopt hist_expire_dups_first

# Changing directories
setopt AUTO_CD
setopt AUTO_PUSHD
setopt CDABLE_VARS
setopt CHASE_LINKS
setopt PUSHD_IGNORE_DUPS

# Job control
setopt NOTIFY

# IO
setopt correct
#setopt correct_all
setopt HASH_DIRS # what use?
alias sudo='nocorrect sudo'

# Completion
autoload -U compinit && compinit
setopt   AUTO_LIST
setopt   AUTO_MENU
unsetopt LIST_AMBIGUOUS
unsetopt BASH_AUTO_LIST
unsetopt MENU_COMPLETE

zstyle ':completion:*'                                          menu select=1
zstyle ':completion:*:descriptions'                             format '%U%B%d%b%u'
zstyle ':completion:*:warnings'                                 format '%BNo match for: %d%b'
zstyle ':completion:*'                                          select-prompt
zstyle ':completion:*'                                          list-colors ${(s.:.)LS_COLORS}       # colorz !
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.zsh list-colors ${(s.:.)LS_COLORS}


# Expression and Globbing
setopt EXTENDED_GLOB
setopt NOMATCH

# Vim stuff
export VISUAL=/usr/bin/vim
export EDITOR=/usr/bin/vim
export SUDO_EDITOR=/usr/bin/vim
export VIMDIR=~/Softs/vim/build/bin/bin/


# Aliases
alias sl='sl -e'
alias LS='sl -e'
alias ls='\ls --color -CF'
alias l=' \ls --color -CFX --group-directories-first'
alias ll='l -alFh'
alias l1='ls --color -CX1'
alias la='l -A'
alias grep='grep -E --color=auto'
alias ag='ack --color-lineno=yellow --color-filename="bold green" --color-match="green on_black"'
alias gr='ag -r'
alias gri='ag -ri'
alias gril='ag -ril'
alias grl='ag -rl'
alias cp='cp --verbose --interactive'
alias mv='mv -i -n --verbose'
alias rm='mvtrash'
alias ln='ln --verbose'
alias mupdatedb='sudo updatedb -U /media/Data --output=$HOME/mlocate.db'
alias mlocate='locate -i -d $HOME/mlocate.db'
alias make='make -j 3'
alias remake='make clean; make'
#alias python='ipython'
alias r='source ranger_cd'
alias pwdxi='pwd | xi'
alias cdxo='cd $( xo )'
alias m='mocp -T erebus_theme'
alias n='ncmpcpp'
alias matlab="matlab_reparenting"
alias vim='$VIMDIR/vim'
alias view='$VIMDIR/view'
alias vimdiff='$VIMDIR/vimdiff'
alias v='vim'
alias dv='dirvim'
alias vd='vidir'
alias vS='[ -e Session.vim ] && v -S Session.vim || echo "no session"'
alias dy='dlYtaudio.sh'
alias u='urxvt -cd $PWD &!'
alias c='clear'
alias dirs='dirs -p'
alias manuscrit='source manuscrit'
alias slam='source slam'
alias nautilus='nautilus --no-desktop'
alias clang11='clang++ -std=c++11'
alias youtube-dl='python ~/Softs/youtube-dl/bin/youtube-dl'
alias python='python3'
alias py='python'
alias ipy='ipython3'
alias gs='git status'
alias gd='git difftool'
alias gl='git log --pretty=format:"%h - %cn, %cr : %s" --graph'
alias ga='git branch -a'
alias dirs='\dirs -v'
alias xo='xclip -o'
alias xi='xclip -i'
alias tl='tmux list-sessions'
alias ta='tmux attach-session -t'
alias tk='tmux kill-session -t'

#Suffix aliases
alias -s c=vim
alias -s cpp=vim
alias -s m=vim
alias -s tex=vim
alias -s pdf=qvince
alias -s ps=qvince
alias -s png=eog
alias -s jpg=eog
alias -s bmp=eog
alias -s avi=vlc
alias -s mkv=vlc
alias -s mp4=vlc
# To align, use:
# '<,'>s/\(alias -s \)\(\S\+\)\(\s\+\)= \(.*\)/\1\3\2=\4


# Colors
autoload -U colors && colors

# Git prompt
source ~/.zsh/zsh-git-prompt/zshrc.sh
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_no_bold[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_no_bold[green]%}]"
ZSH_THEME_GIT_PROMPT_SEPARATOR="%{$fg_no_bold[green]%}|"
git_super_status()
{
  precmd_update_git_vars
  if [ -n "$__CURRENT_GIT_STATUS" ]; then
    STATUS=" $ZSH_THEME_GIT_PROMPT_PREFIX$ZSH_THEME_GIT_PROMPT_BRANCH$GIT_BRANCH"
    if [ "$GIT_BEHIND" -ne "0" ]; then
      STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_BEHIND$GIT_BEHIND"
    fi
    if [ "$GIT_AHEAD" -ne "0" ]; then
      STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_AHEAD$GIT_AHEAD"
    fi
    STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_SEPARATOR"
    if [ "$GIT_STAGED" -ne "0" ]; then
      STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_STAGED$GIT_STAGED"
    fi
    if [ "$GIT_CONFLICTS" -ne "0" ]; then
      STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_CONFLICTS$GIT_CONFLICTS"
    fi
    if [ "$GIT_CHANGED" -ne "0" ]; then
      STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_CHANGED$GIT_CHANGED"
    fi
    if [ "$GIT_UNTRACKED" -ne "0" ]; then
      STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_UNTRACKED"
    fi
    if [ "$GIT_CHANGED" -eq "0" ] && [ "$GIT_CONFLICTS" -eq "0" ] && [ "$GIT_STAGED" -eq "0" ] && [ "$GIT_UNTRACKED" -eq "0" ]; then
      STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_CLEAN"
    fi
    STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_SUFFIX"
    echo "$STATUS"
  fi
}

# prompt
update_prompt()
{
  # Dark
  #export PS1="%{$bg[black]%}%{$fg[yellow]%}⚡%{$fg_bold[grey]%}%n@%m%{$reset_color%} %{$fg_no_bold[blue]%}%~%{$fg_bold[grey]%}% %(?.. ❨%{$fg_no_bold[yellow]%}% %?)%{$fg_bold[grey]%}❩%{$reset_color%} "
  #export RPS1="%{$fg_no_bold[blue]%}%T%{$reset_color%}%{$fg_bold[green]%}%"
  export  PS1="%{$bg[black]%}%{$fg[yellow]%}⚡%{$fg_bold[grey]%}%n@%m %{$fg_no_bold[blue]%}%~$(git_super_status)%(?.. %{$fg_bold[grey]%}% ❨%{$fg_no_bold[yellow]%}% %?)%{$fg_bold[grey]%}❩%{${reset_color}%} %"
  export RPS1="%{$bg[black]%}%{$fg_bold[grey]%}%T%{${reset_color}%}%{$fg_bold[green]%}%"

  # Light
  #export  PS1="%{$bg[blue]%}%{$fg[yellow]%}⚡%{$fg_no_bold[black]%}%n@%m %{$fg_bold[grey]%}%~$(git_super_status)%(?.. %{$fg_bold[grey]%}% ❨%{$fg_no_bold[yellow]%}% %?)%{$fg_bold[grey]%}❩%{${reset_color}%} %"
  #export RPS1="%{$bg[blue]%}%{$fg_bold[grey]%}%T%{${reset_color}%}%{$fg_bold[green]%}%"
}
# Dynamically set urxvt title as current directory
# and update git status in prompt
# http://archive09.linux.com/feature/120291
precmd () { update_prompt; echo -ne "\033]0;${PWD##*/}\007" 2> /dev/null }
preexec() { tput sgr0 } #clean colors


# ls colors,  man dir_colors
video='*.avi=33:*.mkv=33:*.mp4=33:*.flv=33:*.srt=4:*.mov=4:*.MOV=4'
docs='*.pdf=34:*.ps=34:*.eps=34:*.txt=3'
intermediary_files='*.aux=1;30:*.bbl=1;30:*.log=1;30:*.blg=1;30:*.out=1;30:*.toc=1;30'
build_files='*Makefile=1;30:*.ninja=1;30:*CMakeCache.txt=1;30'
bak_files='*.bak=1;30'
compressed='*.zip=95:*.tar=95:*.tgz=95:*.tar.gz=95:*.rar=95:*.bz2=95:*.7z=95:*.iso=33'
images='*.png=00;35:*.jpg=00;35:*.jpeg=00;35:*.JPG=00;35:*.ppm=00;35:*.pgm=00;35:*.bmp=00;35'
code='*.h=4:*.hpp=4:*.o=1;30:*Session.vim=1;30:*.a=32'
cpt_files='*.cpt=01;04;35;42'
LS_COLORS=':di=1;94:fi=0:ln=31:pi=4:so=4:bd=4:cd=4:or=31:mi=0:ex=32':$images:$video:$docs:$compressed:$code:$intermediary_files:$bak_files:$build_files:$cpt_files:':ow=34;1;40'
export LS_COLORS

# prevent ld from demangling
export COLLECT_NO_DEMANGLE=1


# PATH
[ -z $ZSHRC_LOADED ] && export PATH=~/Softs/vim/build/bin/:$PATH
[ -z $ZSHRC_LOADED ] && export PATH=$PATH:~/Code/Scripts/bin
[ -z $ZSHRC_LOADED ] && export PATH=$PATH:~/.cabal/bin
[ -z $ZSHRC_LOADED ] && export PATH=$PATH:~/Softs/vcsh/


# OpenCV2
##export OpenCV_DIR=~/libs/opencv-2.4.9/release
##export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$OpenCV_DIR/shared_libs/lib
#export OpenCV_DIR=~/libs/opencv/build/install
#export OpenCV_LIBS=$OpenCV_DIR/lib
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$OpenCV_LIBS
#export PYTHONPATH=$PYTHONPATH:$OpenCV_LIBS/python3.5/dist-packages

# OpenCV3
export OpenCV_DIR=~/libs/opencv-3.4.4/build/install
export OpenCV_LIBS=$OpenCV_DIR/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$OpenCV_LIBS
export PYTHONPATH=$PYTHONPATH:$OpenCV_LIBS/python3.5/dist-packages


# RealSense
export REALSENSE_DIR=~/libs/realsense/librealsense
export PYTHONPATH=$PYTHONPATH:$REALSENSE_DIR/build/wrappers/python


# Vi bindings
bindkey -v
bindkey -M vicmd '/' history-incremental-search-backward
bindkey -M vicmd '?' history-incremental-search-forward
bindkey -M viins 'jk' vi-cmd-mode

# Cursor color mode
zle-keymap-select ()
{
  if [ $KEYMAP = vicmd ]; then
    #echo -ne "\033]12;#418005\007"
    echo -ne "\033]12;#005842\007"
  else
    echo -ne "\033]12;Black\007"
  fi
}
zle -N zle-keymap-select

zle-line-init ()
{
  zle -K viins
  #echo -ne "\033]12;Black\007"
  echo -ne "\033]12;#777777\007"
}
zle -N zle-line-init


# Marks
export MARKPATH=$HOME/.zsh/marks
function j { cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1" }
function mark { mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1" }
function unmark { \rm -i "$MARKPATH/$1" }
function marks { ls -l "$MARKPATH" | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo }
function marks-help
{
   echo "j to jump"
   echo "m to mark"
   echo "marks to print"
   echo "unmark dir to remove"
}

# extract
function x
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.xz)   tar xJf $1 ;;
      *.tar.bz2)   tar xjf $1 ;;
      *.tar.gz)    tar xzf $1 ;;
      *.bz2)       bunzip2 $1 ;;
      *.rar)       rar x $1 ;;
      *.gz)        gunzip $1 ;;
      *.tar)       tar xvf $1 ;;
      *.tbz2)      tar xjf $1 ;;
      *.tgz)       tar xzf $1 ;;
      *.zip)       unzip $1 ;;
      *.Z)         uncompress $1 ;;
      *.7z)        7za x $1 ;;
      *.xz)        xz -d $1 ;;
      *)           echo "'$1' cannot be extracted via x()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}


# easier directory climb up
rationalise-dot() {
   if [[ $LBUFFER = *.. ]]; then
      LBUFFER+=/..
   else
      LBUFFER+=.
   fi
}
zle -N rationalise-dot
bindkey . rationalise-dot


# source git-completion
#source ~/.zsh/git-completion.zsh


# Get notified when someone logs in
#watch=all                       # watch all logins
#logcheck=30                     # every 30 seconds
#WATCHFMT="%n from %M has %a tty%l at %T %W"


# Colored man pages for color codes, see http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html
man() {
    env \
        LESS_TERMCAP_mb=$fg[magenta]          \
        LESS_TERMCAP_md=$fg_bold[blue]        \
        LESS_TERMCAP_me=$(printf "\e[0m")     \
        LESS_TERMCAP_se=$(printf "\e[0m")     \
        LESS_TERMCAP_so=$fg[yellow]$bg[black] \
        LESS_TERMCAP_ue=$(printf "\e[0m")     \
        LESS_TERMCAP_us=$fg[green]            \
            man "$@"
}


# Edit the command line with vim
autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line
bindkey -M vicmd v edit-command-line



# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export ZSHRC_LOADED="1"
