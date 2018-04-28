
# Place your environment variables in ~/.profile
# that file is read on graphical start

# fish 2.3.0 makes this BREAK
# FOR NOW JUST COMMENT IT OUT
# set PATH ~/.rbenv/bin $PATH
# WANT: one place to set environment variables accessible to ALL software
# APPARENT SOLUTION: put those in ~/.profile
# PROBLEM: this works for everything except fish itself!
#          `if type rbenv` does not find rbenv even though it is
#          in the PATH by ~/.profile
# STOPGAP SOLUTION: set ~/.rbenv/bin here
# REMAINING PROBLEM: ~/.rbenv/bin and thus the shims are not seen outside
#                    a fish shell
# if type rbenv > /dev/null
#     . (rbenv init -|psub)
# end

. $HOME/.homesick/repos/homeshick/homeshick.fish

# pyenv
set PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
status --is-interactive; and . (pyenv init -|psub)
status --is-interactive; and . (pyenv virtualenv-init -|psub)
# . (pyenv init -|psub)
# . (pyenv virtualenv-init -|psub)

# eval (python -m virtualfish)

# alias dc docker-compose
