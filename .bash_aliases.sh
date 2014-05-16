# Quick dir sharing
alias pd='echo $PWD > ~/.lastdir'
alias gd='cd "$(cat ~/.lastdir)"'

# Ring the bell
alias bell='echo -e \\a'

# Internet up?
alias up='ping 4.2.2.2'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep -i --color=auto'
    alias fgrep='fgrep -i --color=auto'
    alias egrep='egrep -i --color=auto'
fi

# Case insensitive locate
alias locate='locate -i'

# startx
alias x='startx'

# mplayer quiet
alias mplayerq='mplayer --really-quiet'

# apt
alias agupdate='sudo apt-get update && sudo apt-get dist-upgrade'

# up a dir
alias ..='cd ..'
