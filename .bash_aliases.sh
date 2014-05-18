# Ring the bell
alias bell='echo -e \\a'

# Internet up?
alias up='ping 4.2.2.2'

# startx
alias x='startx'

# apt
alias agupdate='sudo apt-get update && sudo apt-get dist-upgrade'

########################
# Directory navigation #
########################

# Quick dir sharing between terms
alias pd='echo $PWD > ~/.lastdir'
alias gd='cd "$(cat ~/.lastdir)"'

# Up a dir
alias ..='cd ..'

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
fi

# Case insensitive locate
alias locate='locate -i'
