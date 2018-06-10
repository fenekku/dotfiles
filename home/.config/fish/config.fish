# fish equivalent of .bashrc
#
# Place your environment variables in ~/.profile
# to make the variables available to non-shell
# applications.

. $HOME/.homesick/repos/homeshick/homeshick.fish

# pyenv
set --export PATH $HOME/.pyenv/bin $PATH
status --is-interactive; and . (pyenv init -|psub)
status --is-interactive; and . (pyenv virtualenv-init -|psub)

alias dc docker-compose

# Bash on Windows does not read the .profile
# So we need to modify PATH here if necessary
if not contains $HOME/bin $PATH
  set --export PATH $HOME/bin $HOME/.local/bin $HOME/dev/nim-dev/nim/bin /usr/local/heroku/bin $PATH
end
