# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases.sh ]; then
    . ~/.bash_aliases.sh
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

###################
# Shell Variables #
###################

export PATH="$PATH:~/bin"
# export EDITOR="/usr/local/bin/vim"

#################
# Louis' Prompt #
#################

# Local users have a green prompt
# Remote users have a yellow prompt
# `root` has a red prompt
# If we are connected remotely, `@<hostname>` shows first.

# Displays git repo status info
source ~/.git_prompt.sh
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWDIRTYSTATE=1

build_ps1() {
  # Green default prompt
  local color='\[\e[1;32m\]'
  local host=''

  # If ssh, yellow prompt, include host name
  [[ $SSH_TTY ]] && color='\[\e[1;33m\]'
  [[ $SSH_TTY ]] && host="@$HOSTNAME"

  # If root, red prompt
  [[ $UID -eq 0 ]] && color='\[\e[1;31m\]'

  # Build
  local part1="${color}\u${host} "
  local part2="\[\e[0;34m\]\w ${color}"
  local part3='$(__git_ps1 "[%s]") \[\e[m\]\$'
  echo $part1$part2$part3' '
}
PS1=$(build_ps1)

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
