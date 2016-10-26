if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

export EDITOR="/usr/bin/env nvim"
export TERM=xterm

# Postgres config
export PGHOST=localhost
export PGUSER=postgres

# Path
export GOPATH="$HOME/projects/go"
export PATH="$PATH:/usr/local/heroku/bin"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:$HOME/.cache/rebar3/bin"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/bin/node/bin"
export PATH="$PATH:$HOME/bin/lfe/bin"
export PATH="$HOME/bin:$PATH"
