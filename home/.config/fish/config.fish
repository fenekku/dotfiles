# fish equivalent of .bashrc
#
# Place your environment variables in ~/.profile
# to make the variables available to non-shell
# applications.

source $HOME/.homesick/repos/homeshick/homeshick.fish

# pyenv
set --export PATH $HOME/.pyenv/bin $PATH
status --is-interactive; and source (pyenv init -|psub)
status --is-interactive; and source (pyenv virtualenv-init -|psub)

# pipenv
set --export PIPENV_VENV_IN_PROJECT 1

# pipx
register-python-argcomplete --shell fish pipx | source

# Docker
alias containers "docker ps --all --format 'table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Image}}'"
alias dc docker-compose

# Bash on Windows does not read the .profile
# So we need to modify PATH here if necessary.
# This is fine since environment variables from Bash on Windows
# are never used for GUIs anyway.
if not contains $HOME/bin $PATH
  set --export PATH $HOME/bin $HOME/.local/bin $HOME/.nimble/bin /usr/local/heroku/bin $PATH
end

# pony-lang - ponyup
set --export PATH /home/guillaume/.local/share/ponyup/bin $PATH

# rust-lang - rustup / cargo / rustc
set -x PATH $HOME/.cargo/bin $PATH

# go-lang
set --export PATH $PATH /usr/local/go/bin

function mkdircd
  mkdir $argv
  cd $argv
end