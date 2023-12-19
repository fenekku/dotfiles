if status is-interactive
    # Commands to run in interactive sessions can go here
    eval (zellij setup --generate-auto-start fish | string collect)
end

# Generated for envman. Do not edit.
test -s "$HOME/.config/envman/load.fish"; and source "$HOME/.config/envman/load.fish"

# zoxide
zoxide init fish | source

# starship prompt
starship init fish | source

# pyenv
set --export PYENV_ROOT $HOME/.pyenv
set --export PATH $PYENV_ROOT/bin $PATH
pyenv init - | source

# pipenv
set --export PIPENV_VENV_IN_PROJECT 1

# rust
set --export PATH ~/.cargo/bin $PATH

# Docker
alias containers "docker ps --all --format 'table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Image}}'"
alias dc docker-compose

# if test -d "$HOME/Downloads/Packages/platform-tools"
#     set --export PATH "$HOME/Downloads/Packages/platform-tools" $PATH
# end

# pipx
set --export PIPX_DEFAULT_PYTHON /home/guillaume/.pyenv/shims/python

# local bin
set --export PATH ~/bin $PATH
