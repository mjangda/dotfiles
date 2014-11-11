# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything:
[ -z "$PS1" ] && return
shopt -s checkwinsize

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ll='ls --format=vertical --color=auto -lah'
fi
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
    ;;
*)
    ;;
esac


export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ll='ls $LS_OPTIONS -lah'
alias ls='ls --color=auto'

# START: batmoo mods

# Go
export GOPATH=$HOME/Sites/gocode
export PATH=$PATH:$GOPATH/bin

# Editor
export VISUAL=vim
export EDITOR=vim

# PHP
alias php='php -d display_errors=stderr -d xdebug.cli_color=1'

# SVN
alias p='patch -p0 -i'

alias wpproxy='autossh -N -D 8080 wpproxy'
alias wpcomsync='unison -ui text -repeat 1 wpcom'

# END: batmoo mods
