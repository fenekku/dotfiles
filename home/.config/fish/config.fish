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

# Docker
alias containers "docker ps --all --format 'table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Command}}'"
alias dc docker-compose

# Bash on Windows does not read the .profile
# So we need to modify PATH here if necessary.
# This is fine since environment variables from Bash on Windows
# are never used for GUIs anyway.
if not contains $HOME/bin $PATH
  set --export PATH $HOME/bin $HOME/.local/bin $HOME/.nimble/bin /usr/local/heroku/bin $PATH
end
