# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything:
[ -z "$PS1" ] && return
shopt -s checkwinsize

case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
    ;;
*)
    ;;
esac

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
