# Ring the bell
alias bell='echo -e \\a'

# Internet up?
alias up='time ping 4.2.2.2'

# startx
alias x='startx'

# vim
alias v='vim'

# apt
alias agupdate='sudo apt-get update && sudo apt-get dist-upgrade'

# ls
alias l='ls'
alias ll='ls -lh'
alias la='ls -a'
alias lla='ls -lah'

# i3lock black background
alias i3lock='i3lock -c 303030'

# cd
alias c='cd'

# Quick dir sharing between terms
alias pd='echo $PWD > ~/.lastdir'
alias gd='cd "$(cat ~/.lastdir)"'

# Up dirs
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Go to ~/downloads
alias dl='cd ~/downloads'

#################
# Default flags #
#################

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'

  alias grep='grep -i --color=auto'
  alias fgrep='fgrep -i --color=auto'
  alias egrep='egrep -i --color=auto'
  alias tree='tree -C'

  alias less='less -R'
fi
if [ $(uname) == Darwin ]; then
  alias ls='ls -G'
  alias tree='tree -C'
fi

# Case insensitive locate
alias locate='locate -i'

# feh images fit window size
alias feh='feh -.'
