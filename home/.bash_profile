if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi


[[ $(type -P "brew") ]] && if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
